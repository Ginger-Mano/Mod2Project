class RestaurantReservationsController < ApplicationController
    def show
        @restaurantreservations = RestaurantReservation.find(params[:id])
    end
end
