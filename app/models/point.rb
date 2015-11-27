class Point < ActiveRecord::Base
  has_one :location
  has_one :point_type
  belongs_to :trip

  acts_as_list scope: :trip

  validates :position, numericality: true
end
