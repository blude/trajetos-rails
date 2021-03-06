class Location < ActiveRecord::Base
  has_one :point

  validates :lat, presence: true, numericality: { less_than_or_equal_to: 90.0, greater_than_or_equal_to: -90.0 }
  validates :lng, presence: true, numericality: { less_than_or_equal_to: 180.0, greater_than_or_equal_to: -180.0 }

  def coords
    "#{lat}, #{lng}"
  end
end
