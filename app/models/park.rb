class Park < ApplicationRecord
  has_many :tickets 
  has_many :attractions

  def formatted_opening_time 
    opening_time.strftime(' %l:%M %p')
  end 

  def formatted_closing_time
    closing_time.strftime(' %l:%M %p') 
  end 
end
