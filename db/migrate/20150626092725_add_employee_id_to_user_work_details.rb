class AddEmployeeIdToUserWorkDetails < ActiveRecord::Migration
  def change
    add_reference :user_work_details, :employee, index: true, foreign_key: true
  end
end
