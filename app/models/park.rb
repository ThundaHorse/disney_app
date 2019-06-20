class Park < ApplicationRecord
  has_many :tickets 
  has_many :attractions
  
end
