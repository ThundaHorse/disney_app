class Ticket < ApplicationRecord
  belongs_to :park
  belongs_to :trip
end
