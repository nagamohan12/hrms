class FamilyDetail < ActiveRecord::Base
  belongs_to :blood_group
  belongs_to :user
end
