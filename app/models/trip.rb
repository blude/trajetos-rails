class Trip < ActiveRecord::Base
  belongs_to :route
  has_many :locations

  validates :route, presence: true, allow_blank: false
  validates :name, presence: true, length: { in: 3..20 }

  def headsign
    "#{self.route.number} #{name}"
  end

  def self.search(search)
    Trip.where "name LIKE ?", "%#{search}%"
  end

end