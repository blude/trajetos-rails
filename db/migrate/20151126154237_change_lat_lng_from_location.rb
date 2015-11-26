class ChangeLatLngFromLocation < ActiveRecord::Migration
  def up
    change_table :locations do |t|
      t.change :lat, :decimal, precision: 9, scale: 6
      t.change :lng, :decimal, precision: 9, scale: 6
    end
  end

  def down
    change_table :locations do |t|
      t.change :lat, :float
      t.change :lng, :float
    end
  end

end
