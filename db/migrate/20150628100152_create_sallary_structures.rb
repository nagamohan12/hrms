class CreateSallaryStructures < ActiveRecord::Migration
  def change
    create_table :sallary_structures do |t|
      t.string :name
      t.float :amount
      t.belongs_to :sallary_component_detail, index: true, foreign_key: true
      t.belongs_to :employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
