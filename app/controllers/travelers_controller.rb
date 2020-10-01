class TravelersController < ApplicationController

  before_action :authenticated?, only: [:index, :show]

    def index
        @travelers = Traveler.all
        @destinations = Destination.all
      
    end

    def show
        @traveler = Traveler.find(params[:id])
        
    end

    def new
        @traveler = Traveler.new
    end

    def create
        new_traveler = Traveler.new(traveler_params)
        if new_traveler.save && params[:password] == params[:password_confirmation]
          session[:id] = new_traveler.id
          redirect_to traveler_path(new_traveler)
        else
          flash[:errors] = new_traveler.errors.full_messages
          redirect_to new_traveler_path
        end
    end

    def authenticated?
        # check our session hash if user exists
        if session[:id] != nil 
            @traveler = Traveler.find(session[:id])
        # if no user, take them to sign in/sign up
        else
            redirect_to '/sign_in'
        end
    end

    def edit
      @traveler = Traveler.find(params[:id])
    end
    
    def update
      @traveler = Traveler.find(params[:id])
      @traveler.update(traveler_params)
    
      redirect_to @traveler
    end

    def destroy
      @traveler = Traveler.find(params[:id])
      @traveler.destroy
    
      redirect_to travelers_path
    end

    private
    def traveler_params
        params.require(:traveler).permit(:email, :password, :first_name, :last_name, :age)
    end


end
