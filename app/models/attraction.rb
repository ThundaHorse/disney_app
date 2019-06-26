class Attraction < ApplicationRecord
  belongs_to :park
  has_many :interests
  
  enum status: [:operational, :maintenance, :closed] 

  def formatted_wait_time 
    hours = anticipated_wait_time / 60
    minutes = anticipated_wait_time % 60
    time_string = ""

    time_string += "#{hours} #{'Hour'.pluralize(hours)}" if hours > 0
    time_string += ", " if hours > 0 && minutes > 0
    time_string += "#{minutes} #{'Minute'.pluralize(minutes)}" if minutes > 0

    if status == 'closed'
      time_string = 'Closed for the day'
    elsif status == 'maintenance' 
      time_string = 'Temporarily closed for maintenance, please check back later'
    end 

    time_string
  end 

  def park
    Park.where(id: self.park_id)
  end   
end
