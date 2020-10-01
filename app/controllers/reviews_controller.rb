class ReviewsController < ApplicationController

    def index
        @reviews = Review.all
        @destinations = Destination.all
        @pois = Poi.all
        # byebug
    end

    def show
        @review = Review.find(params[:id])
        @destinations = Destination.all
        @pois = Poi.all
    end

    def new
        @review = Review.new
    end

    def create
        @review = Review.new(rev_params)
        if @review.valid?
          @review.save
          redirect_to review_path(@review)
        else
          flash[:errors] = @review.errors.full_messages
          redirect_to new_review_path
        end
    end

    def edit
        @review = Review.find(params[:id])
    end

    
    def update
        @review = Review.find(params[:id])
        @review.update(rev_params)
        # byebug
        redirect_to @review
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
      
        redirect_to reviews_path
    end

    private
    def rev_params
        params.require(:review).permit(:traveler_id, :poi_id, :description, :rating, :title)
    end

end