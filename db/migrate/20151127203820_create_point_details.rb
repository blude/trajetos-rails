class CreatePointDetails < ActiveRecord::Migration
  def change
    create_table :point_details do |t|
      t.references :point
      t.references :attribute_type
      t.string :value

      t.timestamps null: false
    end
  end
end
