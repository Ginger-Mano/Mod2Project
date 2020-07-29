class WellnessReservationsController < ApplicationController
    def show
        @wellnessreservation = WellnessReservation.find(params[:id])
    end

    def new
        @wellnessreservation = WellnessReservation.new
    end

    def create
        @wellnessreservation = WellnessReservation.create(wellnessreservation_params)
        redirect_to showreservations_path(params[:wellness_reservation][:user_id])
    end

    def edit      
        @wellnessreservation = WellnessReservation.find(params[:id])    
    end

    def update        
        @wellnessreservation = WellnessReservation.find(params[:id])        
        @wellnessreservation.update(wellnessreservation_params)  
        redirect_to showreservations_path(params[:wellness_reservation][:user_id])    
    end 

    def destroy       
        @wellnessreservation = WellnessReservation.find(params[:id])        
        @wellnessreservation.destroy    
        # redirect_to showreservations_path(@wellnesscenter)    
    end

    private

    def wellnessreservation_params
        params.require(:wellness_reservation).permit(:wellnesscenter_name, :group_size, :date, :time, :user_id, :wellness_center_id)
    end
 end
  

