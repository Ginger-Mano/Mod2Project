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

    def edit      
        @restaurantreservation = RestaurantReservation.find(params[:id])    
    end

    def update        
        @restaurantreservation = RestaurantReservation.find(params[:id])        
        @restaurantreservation.update(restaurantreservation_params)  
        redirect_to showreservations_path(params[:restaurant_reservation][:user_id])    
    end 

    def destroy       
       @restaurantreservation = RestaurantReservation.find(params[:id])        
       @restaurantreservation.destroy    
       redirect_back fallback_location: showreservations_path #(@restaurantreservation)    
    end

    private

    def restaurantreservation_params
    params.require(:restaurant_reservation).permit(:restaurant_name, :party_size, :date, :time, :user_id, :restaurant_id)
    end
end
