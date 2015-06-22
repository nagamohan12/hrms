class CreateUserWorkDetails < ActiveRecord::Migration
  def change
    create_table :user_work_details do |t|
      t.date :login
      t.date :logout
      t.float :total_time
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
