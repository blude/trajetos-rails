class Location < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to_many :trip
  acts_as_list :scope => :trip

  validates :lat, presence: true, numericality: true
  validates :lng, presence: true, numericality: true

  def position
    "#{lat}, #{lng}"
  end
=======
  belongs_to :trip

  validates :lat, presence: true, numericality: { less_than_or_equal_to: 90.0, greater_than_or_equal_to: -90.0 }
  validates :lng, presence: true, numericality: { less_than_or_equal_to: 180.0, greater_than_or_equal_to: -180.0 }
>>>>>>> f94154aa2f32cba3084a99c635799dd63d2570b9
end
