class AddLocationReferenceToPoint < ActiveRecord::Migration
  def change
    add_reference :points, :location, index: true, foreign_key: true
  end
end
