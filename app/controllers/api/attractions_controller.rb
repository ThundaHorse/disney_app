class Api::AttractionsController < ApplicationController
  def index 
    AttractionUpdateJob.perform_later
    @attractions = Attraction.all 
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

    ActionCable.server.broadcast "attractions_channel", {
      id: @attraction.id,
      name: @attraction.name,
      status: @attraction.status, 
      anticipated_wait_time: @attraction.anticipated_wait_time
    }

    render 'show.json.jbuilder' 
  end 

  def update 
    @attraction = Attraction.find(params[:id]) 

    @attraction.park_id = params[:park_id] || @attraction.park_id
    @attration.name = params[:name] || @attraction.name
    @attration.status = params[:status] || @attraction.status 
    @attraction.image = params[:image] || @attraction.image 
    @attraction.anticipated_wait_time = params[:anticipated_wait_time] || @attraction.anticipated_wait_time

    # ActionCable.server.broadcast "wait_times_channel", {
    #   id: @attraction.id,
    #   name: @attraction.name,
    #   status: @attraction.status, 
    #   wait_time: @attraction.anticipated_wait_time,
    #   updated_at: @attraction.updated_at.getlocal.localtime.strftime('%m/%d/%Y  %I:%M %p')
    # }

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

  # def talking 
  #   ActionCable.server.broadcast("wait_times_channel", {
  #     message: "Status: Connected"
  #   })
  #   render json: {}
  # end 
end
