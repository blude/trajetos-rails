class Point < ActiveRecord::Base
  belongs_to :location
  belongs_to :point_type
  belongs_to :trip

  acts_as_list scope: :trip

  validates :position, numericality: true

  def type
    "#{self.point_type.name}"
  end
end
