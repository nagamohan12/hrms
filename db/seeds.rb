# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Departments
departments = ['Testing','Developing']
departments.each do |d|
  Department.create(name: d,is_active: true)
end

#Designations
designations = ['Software Engineer Trainee','Software Engineer','Senior Software Engineer']
designations.each do |d|
  Designation.create(name: d,is_active: true)
end

#Grades
grades = ['A','B','C']
grades.each do |g|
  Grades.create(name: g)
end

#Holidays
#language
languages = ['English','Hindi','Telugu','Kannada','Tamil']
languages.each do |l|
  Grades.create(name: l)
end

#Locations
#Religypesions
#User T