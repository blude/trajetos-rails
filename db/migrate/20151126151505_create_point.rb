class CreatePoint < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.references :point_type, index: true, foreign_key: true
      t.references :location, index: true, foreign_key: true
      t.integer :position
      t.boolean :hidden_from_map, default: false
      t.boolean :hidden_from_list, default: false

      t.timestamps null: false
    end
  end
end
