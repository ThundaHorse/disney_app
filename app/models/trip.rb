class Trip < ApplicationRecord
  belongs_to :user
  has_many :tickets 
  has_many :interests 
  has_many :attractions, through: :interests
  has_many :parks, through: :tickets 
  
  def formatted_wait_time 
    hours = max_wait_time / 60
    minutes = max_wait_time % 60
    time_string = ""

    time_string += "#{hours} #{'Hour'.pluralize(hours)}" if hours > 0
    time_string += ", " if hours > 0 && minutes > 0
    time_string += "#{minutes} #{'Minute'.pluralize(minutes)}" if minutes > 0

    time_string
  end 

  def arrival
    arrival_day.strftime('%m/%d/%Y')
  end 

  def departure 
    departure_day.strftime('%m/%d/%Y')
  end 

  def things_to_do 
    Interest.where(trip_id: Trip.where(user_id: user.id))
  end  

end
