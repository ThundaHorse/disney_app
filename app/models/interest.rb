class Interest < ApplicationRecord
  belongs_to :trips
  belongs_to :attraction 

  def formatted_duration 
    hours = duration / 60
    minutes = duration % 60
    time_string = ""

    time_string += "#{hours} #{'Hour'.pluralize(hours)}" if hours > 0
    time_string += ", " if hours > 0 && minutes > 0
    time_string += "#{minutes} #{'Minute'.pluralize(minutes)}" if minutes > 0

    time_string
  end 

  def formatted_start_time 
    start_time.strftime(' %A, %d %b %Y %l:%M %p')
  end 
end
