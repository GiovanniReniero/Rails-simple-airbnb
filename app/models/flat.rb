class Flat < ApplicationRecord
    validates :name, :address, :price_per_night, :number_of_guests, presence: true
    validates :description,  length: { minimum: 10}, presence: true
end
