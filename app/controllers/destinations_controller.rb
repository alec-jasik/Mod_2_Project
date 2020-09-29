class DestinationsController < ApplicationController

    def index
        @destinations = Destination.all
    end

    def show
        @destination = Destination.find(params[:id])
        @pois = Poi.all
    end

    def new
        @destination = Destination.new
    end

    def create
        @destination = Destination.new(dest_params)
        if @destination.valid?
          @destination.save
          redirect_to destination_path(@destination)
        else
          flash[:errors] = @destination.errors.full_messages
          redirect_to new_destination_path
        end
    end

    def dest_params
        params.require(:destination).permit(:city_name, :country_name, :continent)
    end
end
