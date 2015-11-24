class Route < ActiveRecord::Base
  has_many :trips, inverse_of: :route, dependent: :destroy

  validates :number, presence: true, uniqueness: true, format: { with: /\A[\w|-]+\z/ }
  validates :name, presence: true, uniqueness: true, length: { in: 3..50 }

  def full_name
    "#{number} - #{name}"
  end
end
