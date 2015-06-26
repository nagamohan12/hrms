class AddEmployeeIdToPersonnelDetails < ActiveRecord::Migration
  def change
    add_reference :personnel_details, :employee, index: true, foreign_key: true
  end
end
