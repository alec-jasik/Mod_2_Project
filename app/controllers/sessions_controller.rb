class SessionsController < ApplicationController

    def sign_in
        @traveler = Traveler.new
    end

    def create
        @traveler = Traveler.find_by(email: params[:traveler][:email])
        if @traveler && @traveler.authenticate(params[:traveler][:password])
            session[:id] = @traveler.id
            redirect_to '/travelers'
        else
            flash[:error] = "Incorrect Email or Password"
            redirect_to '/sign_in'
        end
    end

    def destroy
        session.clear
        redirect_to '/sign_in'
    end

    private 

    def traveler_params
        params.require(:traveler).permit(:email, :password)
    end


end