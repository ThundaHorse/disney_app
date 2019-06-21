class Trip < ApplicationRecord
  belongs_to :user
  has_many :tickets 
  has_many :interests 
  has_many :attractions, through: :interests 
  has_many :parks, through: :attractions 
  
end
