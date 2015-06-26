class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :emp_id
      t.string :email
      t.string :user_name
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
