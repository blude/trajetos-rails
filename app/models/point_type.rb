class PointType < ActiveRecord::Base
  has_one :point

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end
