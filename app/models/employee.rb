class Employee < ActiveRecord::Base
  belongs_to :user
  has_one :user_detail
  has_one :user_profession_detail
  accepts_nested_attributes_for :user_detail, :user_profession_detail
  validates_presence_of :user_name, :email
  GENDERS = %w(male female unknown)
end
