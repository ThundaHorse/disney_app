class Park < ApplicationRecord
  has_many :tickets 
  has_many :attractions
  has_many :interests, through: :attractions

  def opening 
    opening_time.strftime('%l:%M %p ')
  end 

  def closing
    closing_time.strftime('%l:%M %p ') 
  end 

  def attractions 
    Attraction.where(park_id: self.id)
  end 

  def formatted_for_map
    address.split(" ").join('+')
  end 
end
