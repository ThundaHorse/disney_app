class Api::InterestsController < ApplicationController
  # before_action :authenticate_user 

  def index 
    @interests = Interest.all 
    render 'index.json.jbuilder' 
  end 

  def create 
    @interest = Interest.new(
                            trip_id: params[:trip_id],
                            attraction_id: params[:attraction_id],
                            start_time: params[:start_time],
                            duration: params[:duration]
                            )
    if @interest.save 
      render 'show.json.jbuilder'
    else 
      render json: { message: @interest.errors.full_messages }
    end     
  end 

  def show 
    @interest = Interest.find(params[:id]) 
    render 'show.json.jbuilder'
  end 

  def update 
    
    @interest = Interest.find(params[:id]) 
    
    @interest.trip_id = params[:trip_id] || @interest.trip_id
    @interest.attraction_id = params[:attraction_id] || @interest.attraction_id
    @interest.start_time = params[:start_time] || @interest.start_time
    @interest.duration = params[:duration] || @interest.duration

    if @interest.save 
      render 'show.json.jbuilder'
    else 
      render json: { message: @interest.errors.full_messages } 
    end 
  end 

  def destroy 
    @interest = Interest.find(params[:id]) 
    @interest.destroy 
    render json: { message: "Successfull deleted" } 
  end 
end
