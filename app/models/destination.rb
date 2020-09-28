class Destination < ApplicationRecord
    has_many :trips
    has_many :travelers, through: :trips
    has_many :wishlists
    has_many :travelers, through: :wishlists
end
