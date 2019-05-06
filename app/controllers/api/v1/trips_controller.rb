class Api::V1::TripsController < ApplicationController
    before_action :find_trip, only: [:update]
    def index
        @trips = Trip.all
        render json: @trips
    end

    def new
        @trip = Trip.new
    end 

    def create
        @trip = Trip.create(trip_params)
        render json: @trip, status: :accepted
    end 
    
    
    def update
        @Trip.update(trip_params)
        if @trip.save
        render json: @trip, status: :accepted
        else
        render json: { errors: @trip.errors.full_messages }, status: :unprocessible_entity
        end
    end
    
    private
    
    def trip_params
        params.permit(:name, :img_url)
    end
    
    def find_trip
        @trip = Trip.find(params[:id])
    end
end
