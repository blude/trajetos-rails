class Trip < ActiveRecord::Base
  belongs_to :route
  has_many :points, :order => :position

  validates :route, presence: true, allow_blank: false
  validates :name, presence: true, length: { in: 3..20 }

  def headsign
    "#{self.route.number} #{name}"
  end

  def self.search(query)
    Trip.where("name LIKE ?", "%#{query}%")
  end

end