class TravelersController < ApplicationController

    def index
        @travelers = Traveler.all
    end

    def show
        @traveler = Traveler.find([:id])
    end

end
