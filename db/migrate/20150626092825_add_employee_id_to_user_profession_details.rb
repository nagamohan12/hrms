class AddEmployeeIdToUserProfessionDetails < ActiveRecord::Migration
  def change
    add_reference :user_profession_details, :employee, index: true, foreign_key: true
  end
end
