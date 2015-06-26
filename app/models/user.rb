# User Model
class User < ActiveRecord::Base
  rolify
  # before_action :authenticate_user!
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # has_one :user_detail
  has_one :employee
  # accepts_nested_attributes_for :user_detail
  GENDERS = ['male', 'female','unknown'] # Maybe incomplete
end
