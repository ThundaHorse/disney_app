class Attraction < ApplicationRecord
  belongs_to :park 
  has_many :attractions

  enum status: [:operational, :maintenance, :closed] 
end
