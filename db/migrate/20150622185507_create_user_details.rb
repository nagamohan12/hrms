class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :dob
      t.string :official_phone
      t.string :official_mobile
      t.string :fax
      t.string :official_email
      t.string :pan_no
      t.belongs_to :blood_group, index: true, foreign_key: true
      t.belongs_to :department, index: true, foreign_key: true
      t.belongs_to :designation, index: true, foreign_key: true
      t.belongs_to :grade, index: true, foreign_key: true
      t.belongs_to :religion, index: true, foreign_key: true
      t.belongs_to :user_type, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
