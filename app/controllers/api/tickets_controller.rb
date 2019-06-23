class Api::TicketsController < ApplicationController
  before_action :authenticate_user 

  def index 
    @tickets = Ticket.where(trip_id: current_user.trips.ids) 
    render 'index.json.jbuilder' 
  end 

  def create 
    @ticket = Ticket.new(
                        park_id: params[:park_id],
                        trip_id: params[:trip_id] 
                        )
    if @ticket.save 
      render 'show.json.jbuilder' 
    else 
      render json: { message: @ticket.errors.full_messages }
    end 
  end 

  def show 
    @ticket = Ticket.find(params[:id]) 
    render 'show.json.jbuilder' 
  end 

  def update 
    @ticket = Ticket.find(params[:id]) 

    @ticket.park_id = params[:park_id] || @ticket.park_id 
    @ticket.trip_id = params[:trip_id] || @ticket.trip_id 

    if @ticket.save 
      render 'show.json.jbuilder' 
    else 
      render json: { errors: @ticket.errors.full_messages }
    end 
  end 

end
