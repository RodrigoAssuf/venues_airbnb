class Venue < ApplicationRecord
  belongs_to :user
  has_many :bookings

  VENUE_TYPE = ['Wedding', 'Birthday', 'Corporate']

  validates :category, inclusion: { in: VENUE_TYPE }
  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?
end
