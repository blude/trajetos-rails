class CreateAttributeTypes < ActiveRecord::Migration
  def change
    create_table :attribute_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
