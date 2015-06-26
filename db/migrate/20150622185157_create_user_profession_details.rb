class CreateUserProfessionDetails < ActiveRecord::Migration
  def change
    create_table :user_profession_details do |t|
      t.string :emp_id
      t.date :doj
      t.string :status
      t.string :reporting_manager
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
