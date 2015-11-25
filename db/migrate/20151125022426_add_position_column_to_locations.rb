class AddPositionColumnToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :position, :int
  end
end
