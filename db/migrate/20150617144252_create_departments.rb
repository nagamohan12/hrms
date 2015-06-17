class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
