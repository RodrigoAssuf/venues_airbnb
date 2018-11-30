class Venue < ApplicationRecord
  belongs_to :user
  has_many :bookings
  mount_uploader :photo, PhotoUploader
  VENUE_TYPE = ['Wedding', 'Birthday', 'Business']

  validates :category, inclusion: { in: VENUE_TYPE }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def self.categories
    VENUE_TYPE
  end
end
