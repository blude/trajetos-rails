class AttributeType < ActiveRecord::Base
  validates :name, presence: true
end
