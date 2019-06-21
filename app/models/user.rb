class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true 
  validates :first_name, :last_name, :phone_number, presence: :true 

  has_many :trips 
  has_many :tickets, through: :trips 
end
