class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :number
      t.string :name
      t.boolean :circulator, :default => false

      t.timestamps null: false
    end
    add_index :routes, :number, unique: true
  end
end
