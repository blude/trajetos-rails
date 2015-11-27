class Point < ActiveRecord::Base
  has_one :location
  has_one :point_type
  belongs_to :trip

  validates :position, presence: true, numericality: true
end
