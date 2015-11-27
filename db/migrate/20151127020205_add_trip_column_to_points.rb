class AddTripColumnToPoints < ActiveRecord::Migration
  def change
    add_reference :points, :trip, index: true, foreign_key: true
  end
end
