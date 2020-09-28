class Poi < ApplicationRecord
    belongs_to :destination
    has_many :reviews
    has_many :travelers, through: :reviews
end
