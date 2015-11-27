class RemovePositionColumnToLocations < ActiveRecord::Migration
  def change
    remove_column :locations, :position, :int
  end
end
