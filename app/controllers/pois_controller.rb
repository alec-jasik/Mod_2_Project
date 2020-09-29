class PoisController < ApplicationController

    def index
        @pois = Poi.all
    end

    def show
        @poi = Poi.find(params[:id])
        @destinations = Destination.all
    end

    def new
        @poi = Poi.new
    end

    def create
        @poi = Poi.new(poi_params)
        if @poi.valid?
          @poi.save
          redirect_to poi_path(@poi)
        else
          flash[:errors] = @poi.errors.full_messages
          redirect_to new_poi_path
        end
    end

    def edit
        @poi = Poi.find(params[:id])
    end

    
    def update
        @poi = Poi.find(params[:id])
        @poi.update(poi_params)
      
        redirect_to @poi
    end

    def destroy
        @poi = Poi.find(params[:id])
        @poi.destroy
      
        redirect_to pois_path
    end

    private
    def poi_params
        params.require(:poi).permit(:destination_id, :name, :description)
    end

end
