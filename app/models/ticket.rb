class Ticket < ApplicationRecord
  belongs_to :park
  belongs_to :trip

  def to_park 
    Park.find_by(id: self.park_id) 
  end 
end
