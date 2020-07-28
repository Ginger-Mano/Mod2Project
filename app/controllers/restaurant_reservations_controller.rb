class RestaurantReservationsController < ApplicationController
    def show
        @restaurantreservation = RestaurantReservation.find(params[:id])
    end

    def new
        @restaurantreservation = RestaurantReservation.new
    end

    def create
        @restaurant = RestaurantReservation.create(restaurantreservation_params)
        redirect_to action: "showreservations"
    end

    private

    def restaurantreservation_params
    params.require(:restaurantreservation).permit(:restaurant_name, :party_size, :date, :time)
    end
end
