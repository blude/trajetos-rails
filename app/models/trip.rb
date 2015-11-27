class Trip < ActiveRecord::Base
  belongs_to :route
  has_many :points, -> { order('position ASC') }

  validates :route_id, presence: true
  validates :name, presence: true, length: { in: 3..20 }

  def headsign
    "#{self.route.number} #{name}"
  end

  def self.search(query)
    Trip.where("name LIKE ?", "%#{query}%")
  end

end