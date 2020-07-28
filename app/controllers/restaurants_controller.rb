class RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all
    end

    def show
        @restaurant = Restaurant.find(params[:id])
    end

    def create 
        @restaurant = Restaurant.create(restaurant_params)
    end

    private 
    def restaurant_params
        params.permit(:name, :bio, :address, :url, :review, :avg_rating)
    end


end
