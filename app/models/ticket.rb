class Ticket < ApplicationRecord
  belongs_to :ticket
  belongs_to :park
end
