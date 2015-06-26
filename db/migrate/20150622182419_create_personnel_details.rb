class CreatePersonnelDetails < ActiveRecord::Migration
  def change
    create_table :personnel_details do |t|
      t.string :birth_place
      t.string :caste
      t.string :nationality
      t.string :voter_id
      t.string :aadhar_no
      t.string :marital_status
      t.date :anniversary_date
      t.string :spouse_name
      t.integer :no_of_children
      t.string :personnel_email
      t.string :personnel_email1
      t.integer :personnel_mobile
      t.integer :personnel_mobile1
      t.integer :emergency_contact_number
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
