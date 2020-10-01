class Destination < ApplicationRecord
    has_many :trips
    has_many :travelers, through: :trips
    has_many :wishlists
    has_many :travelers, through: :wishlists
    has_many :pois

    validates :city_name, presence: true
    validates :country_name, presence: true
    validates :continent, presence: true
    validates :city_name, presence: true
    validates :img_url, presence: true

end
