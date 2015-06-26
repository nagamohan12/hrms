class AddEmployeeIdToUserDetails < ActiveRecord::Migration
  def change
    add_reference :user_details, :employee, index: true, foreign_key: true
  end
end
