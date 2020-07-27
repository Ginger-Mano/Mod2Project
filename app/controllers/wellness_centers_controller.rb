class WellnessCentersController < ApplicationController
    def index
        @wellnesscenters = WellnessCenter.all
    end

    def show
        @wellnesscenter = WellnessCenter.find(params[:id])
    end
end
