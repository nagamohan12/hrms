class AddLodinTimeAndLogoutTimeForUserWorkDetails < ActiveRecord::Migration
  def change
    add_column :user_work_details, :login_time, :datetime
    add_column :user_work_details, :logout_time, :datetime
  end
end
