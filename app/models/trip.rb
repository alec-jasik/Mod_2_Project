class Trip < ApplicationRecord
    belongs_to :traveler
    belongs_to :destination

    validates :traveler_id, presence: true
    validates :destination_id, presence: true
end
 