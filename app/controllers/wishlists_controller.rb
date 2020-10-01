class WishlistsController < ApplicationController
    def index
        @wishlists = Wishlist.all
    end

    def show
        @wishlist = Wishlist.find(params[:id])
        #  byebug
    end

    def new
        @wishlist = Wishlist.new
    end

    def create
        @wishlist = Wishlist.new(wish_params)
        if @wishlist.valid?
          @wishlist.save
        #   byebug
          redirect_to wishlists_path(@wishlist)
        else
          flash[:errors] = @wishlist.errors.full_messages
          redirect_to new_wishlist_path
        end
    end

    def edit
        @wishlist = Wishlist.find(params[:id])
    end
      
    def update
        @wishlist = Wishlist.find(params[:id])
        @wishlist.update(wish_params)
        # byebug
      
        redirect_to @wishlist
    end

    def destroy
        @wishlist = Wishlist.find(params[:id])
        @wishlist.destroy
    
        redirect_to wishlists_path
    end

    def wish_params
        params.require(:wishlist).permit(:traveler_id, :destination_id)
    end
end
