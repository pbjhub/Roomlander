class Room < ActiveRecord::Base
  belongs_to :user
  mount_uploaders :images, ImageUploader
  validates :latitude, presence: true
  validates :longitude, presence: false
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode
end
