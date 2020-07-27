class WellnessReservation < ApplicationRecord
  belongs_to :user
  belongs_to :wellness_center
end
