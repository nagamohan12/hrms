# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#super admin
user = User.find_by_email('superadmin@test.com')
User.create!(email: 'superadmin@test.com',password: 'test@123') if user.blank?

# Departments
departments = %w(Technical QA Functional)
departments.each do |d|
  Department.where(name: d, is_active: true).first_or_create
end

# Designations
designations = ['Software Engineer Trainee', 'Software Engineer', 'Senior Software Engineer']
designations.each do |d|
  Designation.where(name: d, is_active: true).first_or_create
end

# Grades
grades = %w(A B C)
grades.each do |g|
  Grade.where(name: g).first_or_create
end

# Holidays
# language
languages = %w(English Hindi Telugu Kannada Tamil)
languages.each do |l|
  Language.where(name: l).first_or_create
end

# Locations
locations = %w(Bengaluru Tumkur)
locations.each do |l|
  Location.where(name: l).first_or_create
end

# Religions
religions = %w(Hindu Buddhist Christian Muslim Sikh Others)
religions.each do |r|
  Religion.where(name: r).first_or_create
end

# User Types
user_types = %w(Permanent Contract)
user_types.each do |ut|
  UserType.where(name: ut).first_or_create
end
