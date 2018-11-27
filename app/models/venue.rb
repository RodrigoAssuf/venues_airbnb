class Venue < ApplicationRecord
  belongs_to :user
  has_many :bookings
end
