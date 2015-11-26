class CreatePointType < ActiveRecord::Migration
  def change
    create_table :point_types do |t|
      t.string :name, required: true
      t.string :description, required: true

      t.timestamps null: false
    end
  end
end
