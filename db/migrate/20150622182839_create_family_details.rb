class CreateFamilyDetails < ActiveRecord::Migration
  def change
    create_table :family_details do |t|
      t.string :name
      t.date :dob
      t.string :nationality
      t.string :gender
      t.belongs_to :blood_group, index: true, foreign_key: true
      t.string :profession
      t.string :relationship
      t.string :is_dependent
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
