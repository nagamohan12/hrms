class AddEmployeeIdToFamilyDetails < ActiveRecord::Migration
  def change
    add_reference :family_details, :employee, index: true, foreign_key: true
  end
end
