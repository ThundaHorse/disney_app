class Api::AttractionsController < ApplicationController
  # include WaitHelper

  def index 
    @attractions = Attraction.all 
    # UserSignUpJob.perform_later

    render 'index.json.jbuilder' 
  end 

  def create 
    @attraction = Attraction.new(
                                park_id: params[:park_id], 
                                name: params[:name], 
                                status: params[:status], 
                                image: params[:image],
                                anticipated_wait_time: params[:anticipated_wait_time]
                                )
    if @attraction.save 
      render 'show.json.jbuilder'
    else 
      render json: { message: @attraction.errors.full_messages } 
    end 
  end 

  def show 
    @attraction = Attraction.find(params[:id]) 
    render 'show.json.jbuilder' 
  end 

  def update 
    @attraction = Attraction.find(params[:id]) 

    @attraction.park_id = params[:park_id] || @attraction.park_id
    @attration.name = params[:name] || @attraction.name
    @attration.status = params[:status] || @attraction.status 
    @attraction.image = params[:image] || @attraction.image 
    @attraction.anticipated_wait_time = params[:anticipated_wait_time] || @attraction.anticipated_wait_time

    if @attraction.save 
      render 'show.json.jbuilder' 
    else 
      render json: { message: @attraction.errors.full_messages }
    end 
  end 

  def destroy 
    @attraction = Attraction.find(params[:id]) 
    @attration.destroy 
    render json: { errors: @attraction.errors.full_messages }
  end  
end
