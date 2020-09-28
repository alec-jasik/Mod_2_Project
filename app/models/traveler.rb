class Traveler < ApplicationRecord
    has_many :trips
    has_many :destinations, through: :trips
    has_many :wishlists
    has_many :destinations, through: :wishlists
    has_many :reviews
    has_many :pois, through: :reviews

    def full_name
        self.first_name + " " + self.last_name
    end

end
