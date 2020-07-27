class User < ApplicationRecord
    has_many :restaurant_reservations
    has_many :restaurants, through: :restaurant_reservations
    has_many :wellness_reservations 
    has_many :wellness_centers, through: :wellness_reservations
end
