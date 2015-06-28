class UserWorkDetail < ActiveRecord::Base
  belongs_to :user

  def self.create_work_detail(login_date,logout_date,login_time,logout_time,employee_id)
    params = {login: login_date, logout: logout_date, employee_id: employee_id, login_time: login_time, logout_time: logout_time}
    @user_work_detail = UserWorkDetail.new(params)
    if @user_work_detail.logout == @user_work_detail.login
      @user_work_detail.total_time = (logout_time - login_time) / 60 #converted to min
    end
    @user_work_detail.save
  end

  def login_time_structure
    @login_time = login_time
    "#{@login_time.hour}:#{@login_time.min}:#{@login_time.sec}"
  end

  def logout_time_structure
    @logout_time = logout_time
    "#{@logout_time.hour}:#{@logout_time.min}:#{@logout_time.sec}"
  end
end

# UserWorkDetail(Time.at(Time.now.to_i - 86400))