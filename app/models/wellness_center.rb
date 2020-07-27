class WellnessCenter < ApplicationRecord
    has_many :wellness_reservations
    has_many :users, through: :wellness_reservations
end
