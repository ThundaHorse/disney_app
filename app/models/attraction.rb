class Attraction < ApplicationRecord
  belongs_to :park 

  enum status: [:operational, :maintenance, :closed] 
end
