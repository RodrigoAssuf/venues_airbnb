class Booking < ApplicationRecord
  belongs_to :venue
  belongs_to :user
end
