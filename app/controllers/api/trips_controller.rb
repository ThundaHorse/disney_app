class Api::TripsController < ApplicationController
  # before_action :authenticate_user 
  def index 
    @trips = Trip.all 
    render 'index.json.jbuilder' 
  end 

  def create 
    @trip = Trip.new(
                    kids_present: params[:kids_present],
                    max_wait_time: params[:max_wait_time], 
                    user_id: params[:user_id]
                    )
    if @trip.save 
      render 'show.json.jbuilder'
    else 
      render json: { message: @trip.errors.full_messages }
    end 
  end 

  def show 
    @trip = Trip.find(params[:id])
    render 'show.json.jbuilder'
  end 

  def update 
    @trip = Trip.find(params[:id]) 

    @trip.kids_present = params[:kids_present] || @trips.kids_present
    @trip.max_wait_time = params[:max_wait_time] || @trip.max_wait_time
    @trip.user_id = params[:user_id] || @trip.user_id 

    if @trip.save 
      render 'show.json.jbuilder' 
    else 
      render json: { errors: @trip.errors.full_messages }, status: :unprocessable_entity 
    end 
  end 

  def destroy 
    
    @trip = Trip.find(params[:id]) 
    @trip.destroy 
    render json: { message: "Successfully deleted trip" }

  end 

end
