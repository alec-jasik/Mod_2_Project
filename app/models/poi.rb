class Poi < ApplicationRecord
    belongs_to :destination
    has_many :reviews
    has_many :travelers, through: :reviews

    validates :destination_id, presence: true
    validates :name, presence: true
    validates :description, presence: true
end
