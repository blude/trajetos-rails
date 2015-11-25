class Route < ActiveRecord::Base
  has_many :trips, :inverse_of => :route, :dependent => :destroy

  validates :number, presence: true, uniqueness: true, format: { with: /\A[0-9]{3,4}\-?\w?\z/ }
  validates :name, presence: true, uniqueness: true, length: { in: 3..50 }, format: { with: /\A.+\s\/\s.+\z/ }

  def full_name
    "#{number} - #{name}"
  end
end
