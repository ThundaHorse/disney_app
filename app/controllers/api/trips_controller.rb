class Api::TripsController < ApplicationController
  before_action :authenticate_user 
  
  def index 
    if current_user 
      @trips = Trip.all.where(user_id: current_user.id)
      render 'index.json.jbuilder' 
    else 
      render json: { error: 'Please sign in to view your trips' }
    end 
  end 

  def create 
    if current_user 
      @trip = Trip.new(
                      max_wait_time: params[:max_wait_time], 
                      user_id: current_user.id
                      )
      if @trip.save 
        render 'show.json.jbuilder'
      else 
        render json: { errors: @trip.errors.full_messages }
      end 
    else  
      render json: { message: "Please Log In" }
    end 
  end 

  def show 
    if current_user 
      @trip = Trip.find(params[:id])
      render 'show.json.jbuilder'
    else 
      render json: { message: "Please Log In to see your trips" }
    end 
  end 

  def update 
    if current_user 
      @trip = Trip.find(params[:id]) 

      @trip.max_wait_time = params[:max_wait_time] || @trip.max_wait_time
      @trip.user_id = current_user.id 

      if @trip.save 
        render 'show.json.jbuilder' 
      else 
        render json: { messages: @trip.errors.full_messages }, status: :unprocessable_entity 
      end 
    else 
      render json: { errors: "You must be signed in to view your trips" }
    end 
  end 

  def destroy 
    if current_user 
      @trip = Trip.find(params[:id]) 
      @trip.destroy 
      render json: { message: "Successfully deleted trip" }
    else 
      render json: { message: "Please sign in to delete your trips" }
    end 
  end 

end
