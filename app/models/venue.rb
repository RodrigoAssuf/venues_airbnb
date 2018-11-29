class Venue < ApplicationRecord
  belongs_to :user
  has_many :bookings
  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?

  def self.categories
    VENUE_TYPES
  end
end
