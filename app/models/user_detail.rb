class UserDetail < ActiveRecord::Base
  belongs_to :blood_group
  belongs_to :department
  belongs_to :designation
  belongs_to :grade
  belongs_to :religion
  belongs_to :user_type
  belongs_to :user
end
