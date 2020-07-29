class RestaurantReservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant


  validates :party_size, numericality: {
    greater_than: 0 
  }
  validates :date, numericality: {
        greater_than: 0
  }
end
