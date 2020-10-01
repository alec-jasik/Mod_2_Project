class Traveler < ApplicationRecord
    has_secure_password

    has_many :trips
    has_many :destinations, through: :trips
    has_many :wishlists
    has_many :destinations, through: :wishlists
    has_many :reviews
    has_many :pois, through: :reviews

    # validates :email, uniqueness: true, presence: true
    # # validates :password, length: { minimum: 8 }, presence: true
    # validates :first_name, presence: true
    # validates :last_name, presence: true
    # validates :age, numericality: { greater_than: 17 }

    def full_name
        self.first_name + " " + self.last_name
    end

end
