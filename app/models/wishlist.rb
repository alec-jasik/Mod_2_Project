class Wishlist < ApplicationRecord
    belongs_to :traveler
    belongs_to :destination
end
