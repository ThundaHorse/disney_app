class Attraction < ApplicationRecord
  belongs_to :park 
  has_many :attractions
end
