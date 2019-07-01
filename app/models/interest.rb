class Interest < ApplicationRecord
  belongs_to :attraction
  belongs_to :trip

  def formatted_start_time 
    start_time.strftime(' %A, %d %b %Y %l:%M %p')
  end 

  def attractions_associated 
    Attraction.where(id: attraction_id)
  end   
end
