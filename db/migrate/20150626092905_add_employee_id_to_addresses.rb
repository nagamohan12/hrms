class AddEmployeeIdToAddresses < ActiveRecord::Migration
  def change
    add_reference :addresses, :employee, index: true, foreign_key: true
  end
end
