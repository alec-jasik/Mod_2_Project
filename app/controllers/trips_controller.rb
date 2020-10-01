class TripsController < ApplicationController
    def index
        @trips = Trip.all
    end

    def show
        @trip = Trip.find(params[:id])
        #  byebug
    end

    def new
        @trip = Trip.new
    end

    def create
        @trip = Trip.new(trip_params)
        if @trip.valid?
          @trip.save
        #   byebug
          redirect_to trips_path(@trip)
        else
          flash[:errors] = @trip.errors.full_messages
          redirect_to new_trip_path
        end
    end

    def edit
        @trip = Trip.find(params[:id])
    end
      
    def update
        @trip = Trip.find(params[:id])
        @trip.update(trip_params)
        # byebug
      
        redirect_to @trip
    end

    def destroy
        @trip = Trip.find(params[:id])
        @trip.destroy
    
        redirect_to trips_path
    end

    def trip_params
        params.require(:trip).permit(:traveler_id, :destination_id)
    end
end
