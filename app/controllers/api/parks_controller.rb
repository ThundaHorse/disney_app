class Api::ParksController < ApplicationController
  # before_action :authenticate_user 
  
  def index 
    @parks = Park.all 
    render 'index.json.jbuilder' 
  end 

  def create 
    @park = Park.find(params[:id]) 
    @park.new(
              name: params[:name], 
              opening_time: params[:opening_time], 
              closing_time: params[:closing_time], 
              image: params[:image]
              )
    if @park.save 
      render 'show.json.jbuilder'
    else 
      render json: { message: @park.errors.full_messages }
    end 
  end 

  def show 
    @park = Park.find(params[:id]) 
    render 'show.json.jbuilder'
  end 

  def update 
    @park = Park.find(params[:id]) 
    
    @park.name = params[:name] || @park.name 
    @park.opening_time = params[:opening_time] || @park.opening_time
    @park.closing_time = params[:closing_time] || @park.closing_time
    @park.image = params[:image] || @park.image 

    if @park.save 
      render 'show.json.jbuilder' 
    else 
      render json: { errors: @park.errors.full_messages }
    end 
  end 

  def destroy 
    @park = Park.find(params[:id]) 
    @park.destroy 
    render json: { message: "Park successfully destroyed" }
  end 

end
