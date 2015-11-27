class Point < ActiveRecord::Base
  belongs_to :location
  belongs_to :point_type
  belongs_to :trip

#  acts_as_list scope: :trip

  validates :location_id, presence: true
  validates :point_type_id, presence: true
  validates :trip_id, presence: true

  def coords
    "#{self.location.coords}"
  end

  def type
    "#{self.point_type.name}"
  end
end
