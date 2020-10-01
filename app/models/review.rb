class Review < ApplicationRecord
    belongs_to :traveler
    belongs_to :poi

    validates :title, presence: true
    validates :description, length: { maximum: 1000 }, presence: true
    validates :rating, presence: true

end
