class Location < ActiveRecord::Base
  belongs_to_many :trip
  acts_as_list :scope => :trip

  validates :lat, presence: true, numericality: true
  validates :lng, presence: true, numericality: true

  def position
    "#{lat}, #{lng}"
  end
end
