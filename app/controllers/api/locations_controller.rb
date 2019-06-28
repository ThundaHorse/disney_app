class Api::LocationsController < ApplicationController
  def find 
    park_address = Park.find(params[:id]).formatted_for_map

    response = HTTP.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{park_address}&key=#{ENV['API_KEY']}")
    @data = response.parse

    render 'index.json.jbuilder'
  end  
end
