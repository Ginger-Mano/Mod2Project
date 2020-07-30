class User < ApplicationRecord
    has_many :restaurant_reservations
    has_many :restaurants, through: :restaurant_reservations
    has_many :wellness_reservations 
    has_many :wellness_centers, through: :wellness_reservations

<<<<<<< HEAD

    validates :username, presence: true
    validates :username, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters!" }
    validates :password, presence: true 
    validates :password, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters!" }
=======
validates :username, presence: true
validates :username, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters!" }
validates :password, presence: true 
validates :password, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters!" }
>>>>>>> s
end
