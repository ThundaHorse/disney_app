class Interest < ApplicationRecord
  belongs_to :attraction
  belongs_to :trip

  def formatted_start_time 
    start_time.getlocal.localtime.strftime('%m/%d/%Y  %I:%M %p')
  end 

  def formatted_update
    updated_at.getlocal.localtime.strftime('%m/%d/%Y  %I:%M %p')
  end 

  def attractions_associated 
    Attraction.where(id: attraction_id)
  end
  
end
