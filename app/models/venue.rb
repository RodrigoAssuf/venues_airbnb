class Venue < ApplicationRecord
  belongs_to :user
  has_many :bookings
  mount_uploader :photo, PhotoUploader
  VENUE_TYPE = ['Wedding', 'Birthday', 'Business']
  DEFAULT_PHOTO = "https://source.unsplash.com/random/2500x1500"

  validates :category, inclusion: { in: VENUE_TYPE }
  validates :name, presence: true
  validates :price, presence: true
  validates :latitude, numericality: { greater_than_or_equal_to: -90, less_than_or_equal_to: 90 }
  validates :longitude, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def self.categories
    VENUE_TYPE
  end

  def photo_or_default
    photo.file.nil? ? DEFAULT_PHOTO : photo
  end
end
