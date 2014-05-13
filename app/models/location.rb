class Location < ActiveRecord::Base
  belongs_to :user
  # default_scope -> { order('created_at DESC') }
  # validates :user_id, presence: true

  attr_accessible :address, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode,:if => :address_changed?
end
