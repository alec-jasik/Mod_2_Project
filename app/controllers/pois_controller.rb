class PoisController < ApplicationController

    def index
        @pois = Poi.all
    end

    def show
        @poi = Poi.find(params[:id])
    end

    def new
    end

    def create
    end

end
