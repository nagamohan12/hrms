class CreateSallaryComponentDetails < ActiveRecord::Migration
  def change
    create_table :sallary_component_details do |t|
      t.string :name
      t.string :print_name
      t.string :component_type
      t.string :amt_per
      t.string :status
      t.integer :amt_per_value

      t.timestamps null: false
    end
  end
end
