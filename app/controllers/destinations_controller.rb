class DestinationsController < ApplicationController

    def index
        @destinations = Destination.all
    end

    def show
        @destination = Destination.find(params[:id])
       
        #  byebug
    end

    def new
        @destination = Destination.new
    end

    def create
        @destination = Destination.new(dest_params)
        if @destination.valid?
          @destination.save
        #   byebug
          redirect_to destination_path(@destination)
        else
          flash[:errors] = @destination.errors.full_messages
          redirect_to new_destination_path
        end
    end

    def edit
        @destination = Destination.find(params[:id])
    end
      
    def update
        @destination = Destination.find(params[:id])
        @destination.update(dest_params)
        # byebug
      
        redirect_to @destination
    end

    def destroy
        @destination = Destination.find(params[:id])
        @destination.destroy
    
        redirect_to destinations_path
    end

    def dest_params
        params.require(:destination).permit(:city_name, :country_name, :continent, :img_url)
    end
end
