class TravelersController < ApplicationController

    def index
        @travelers = Traveler.all
    end

    def show
        @traveler = Traveler.find(params[:id])
    end

    def new
        @traveler = Traveler.new
    end

    def create
        @traveler = Traveler.new(trav_params)
        if @traveler.valid?
          @traveler.save
          redirect_to traveler_path(@traveler)
        else
          flash[:errors] = @traveler.errors.full_messages
          redirect_to new_traveler_path
        end
    end

    def edit
      @traveler = Traveler.find(params[:id])
    end
    
    def update
      @traveler = Traveler.find(params[:id])
      @traveler.update(trav_params)
      byebug
    
      redirect_to @traveler
    end

    def destroy
      @traveler = Traveler.find(params[:id])
      @traveler.destroy
    
      redirect_to travelers_path
    end

    private
    def trav_params
        params.require(:traveler).permit(:email, :password, :first_name, :last_name, :age)
    end


end
