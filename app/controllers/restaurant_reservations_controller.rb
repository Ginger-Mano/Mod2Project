class RestaurantReservationsController < ApplicationController
    def show
        @restaurantreservation = RestaurantReservation.find(params[:id])
    end

    def new
        @restaurantreservation = RestaurantReservation.new
    end

    def create
        @restaurantreservation = RestaurantReservation.create(restaurantreservation_params)
        redirect_to showreservations_path(params[:restaurant_reservation][:user_id])
    end

    private

    def restaurantreservation_params
    params.require(:restaurant_reservation).permit(:restaurant_name, :party_size, :date, :time, :user_id, :restaurant_id)
    end
end
