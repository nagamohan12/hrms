class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.boolean :is_active ,default: true

      t.timestamps null: false
    end
  end
end
