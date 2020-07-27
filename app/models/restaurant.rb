class Restaurant < ApplicationRecord
    has_many :restaurant_reservations
    has_many :users, through: :restaurant_reservations
end
