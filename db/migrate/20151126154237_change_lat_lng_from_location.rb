class ChangeLatLngFromLocation < ActiveRecord::Migration
  def up
    change_table :locations do |t|
      t.change :lat, :decimal, precision: 8, scale: 5
      t.change :lng, :decimal, precision: 8, scale: 5
    end
  end

  def down
    change_table :locations do |t|
      t.change :lat, :float
      t.change :lng, :float
    end
  end

end
