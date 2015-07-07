# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150628100152) do

  create_table "addresses", force: :cascade do |t|
    t.text     "permanent",   limit: 65535
    t.text     "present",     limit: 65535
    t.text     "emergency",   limit: 65535
    t.integer  "user_id",     limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "employee_id", limit: 4
  end

  add_index "addresses", ["employee_id"], name: "index_addresses_on_employee_id", using: :btree
  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id", using: :btree

  create_table "blood_groups", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "is_active",  limit: 1,   default: true
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "is_active",  limit: 1,   default: true
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "designations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "is_active",  limit: 1,   default: true
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "emp_id",     limit: 255
    t.string   "email",      limit: 255
    t.string   "user_name",  limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "employees", ["user_id"], name: "index_employees_on_user_id", using: :btree

  create_table "family_details", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.date     "dob"
    t.string   "nationality",    limit: 255
    t.string   "gender",         limit: 255
    t.integer  "blood_group_id", limit: 4
    t.string   "profession",     limit: 255
    t.string   "relationship",   limit: 255
    t.string   "is_dependent",   limit: 255
    t.integer  "user_id",        limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "employee_id",    limit: 4
  end

  add_index "family_details", ["blood_group_id"], name: "index_family_details_on_blood_group_id", using: :btree
  add_index "family_details", ["employee_id"], name: "index_family_details_on_employee_id", using: :btree
  add_index "family_details", ["user_id"], name: "index_family_details_on_user_id", using: :btree

  create_table "grades", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "holidays", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.date     "date"
    t.string   "year",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "is_active",  limit: 1,   default: true
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "personnel_details", force: :cascade do |t|
    t.string   "birth_place",              limit: 255
    t.string   "caste",                    limit: 255
    t.string   "nationality",              limit: 255
    t.string   "voter_id",                 limit: 255
    t.string   "aadhar_no",                limit: 255
    t.string   "marital_status",           limit: 255
    t.date     "anniversary_date"
    t.string   "spouse_name",              limit: 255
    t.integer  "no_of_children",           limit: 4
    t.string   "personnel_email",          limit: 255
    t.string   "personnel_email1",         limit: 255
    t.integer  "personnel_mobile",         limit: 4
    t.integer  "personnel_mobile1",        limit: 4
    t.integer  "emergency_contact_number", limit: 4
    t.integer  "user_id",                  limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "employee_id",              limit: 4
  end

  add_index "personnel_details", ["employee_id"], name: "index_personnel_details_on_employee_id", using: :btree
  add_index "personnel_details", ["user_id"], name: "index_personnel_details_on_user_id", using: :btree

  create_table "religions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "resource_id",   limit: 4
    t.string   "resource_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "sallary_component_details", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "print_name",     limit: 255
    t.string   "component_type", limit: 255
    t.string   "amt_per",        limit: 255
    t.string   "status",         limit: 255
    t.integer  "amt_per_value",  limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "position",       limit: 4
  end

  create_table "sallary_structures", force: :cascade do |t|
    t.string   "name",                        limit: 255
    t.float    "amount",                      limit: 24
    t.integer  "sallary_component_detail_id", limit: 4
    t.integer  "employee_id",                 limit: 4
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "sallary_structures", ["employee_id"], name: "index_sallary_structures_on_employee_id", using: :btree
  add_index "sallary_structures", ["sallary_component_detail_id"], name: "index_sallary_structures_on_sallary_component_detail_id", using: :btree

  create_table "user_details", force: :cascade do |t|
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.string   "gender",          limit: 255
    t.date     "dob"
    t.string   "official_phone",  limit: 255
    t.string   "official_mobile", limit: 255
    t.string   "fax",             limit: 255
    t.string   "official_email",  limit: 255
    t.string   "pan_no",          limit: 255
    t.integer  "blood_group_id",  limit: 4
    t.integer  "department_id",   limit: 4
    t.integer  "designation_id",  limit: 4
    t.integer  "grade_id",        limit: 4
    t.integer  "religion_id",     limit: 4
    t.integer  "user_type_id",    limit: 4
    t.integer  "user_id",         limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "employee_id",     limit: 4
  end

  add_index "user_details", ["blood_group_id"], name: "index_user_details_on_blood_group_id", using: :btree
  add_index "user_details", ["department_id"], name: "index_user_details_on_department_id", using: :btree
  add_index "user_details", ["designation_id"], name: "index_user_details_on_designation_id", using: :btree
  add_index "user_details", ["employee_id"], name: "index_user_details_on_employee_id", using: :btree
  add_index "user_details", ["grade_id"], name: "index_user_details_on_grade_id", using: :btree
  add_index "user_details", ["religion_id"], name: "index_user_details_on_religion_id", using: :btree
  add_index "user_details", ["user_id"], name: "index_user_details_on_user_id", using: :btree
  add_index "user_details", ["user_type_id"], name: "index_user_details_on_user_type_id", using: :btree

  create_table "user_profession_details", force: :cascade do |t|
    t.string   "emp_id",            limit: 255
    t.date     "doj"
    t.string   "status",            limit: 255
    t.string   "reporting_manager", limit: 255
    t.integer  "user_id",           limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "employee_id",       limit: 4
  end

  add_index "user_profession_details", ["employee_id"], name: "index_user_profession_details_on_employee_id", using: :btree
  add_index "user_profession_details", ["user_id"], name: "index_user_profession_details_on_user_id", using: :btree

  create_table "user_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "user_work_details", force: :cascade do |t|
    t.date     "login"
    t.date     "logout"
    t.float    "total_time",  limit: 24
    t.integer  "user_id",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "employee_id", limit: 4
    t.datetime "login_time"
    t.datetime "logout_time"
  end

  add_index "user_work_details", ["employee_id"], name: "index_user_work_details_on_employee_id", using: :btree
  add_index "user_work_details", ["user_id"], name: "index_user_work_details_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_name",              limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id", limit: 4
    t.integer "role_id", limit: 4
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  add_foreign_key "addresses", "employees"
  add_foreign_key "addresses", "users"
  add_foreign_key "employees", "users"
  add_foreign_key "family_details", "blood_groups"
  add_foreign_key "family_details", "employees"
  add_foreign_key "family_details", "users"
  add_foreign_key "personnel_details", "employees"
  add_foreign_key "personnel_details", "users"
  add_foreign_key "sallary_structures", "employees"
  add_foreign_key "sallary_structures", "sallary_component_details"
  add_foreign_key "user_details", "blood_groups"
  add_foreign_key "user_details", "departments"
  add_foreign_key "user_details", "designations"
  add_foreign_key "user_details", "employees"
  add_foreign_key "user_details", "grades"
  add_foreign_key "user_details", "religions"
  add_foreign_key "user_details", "user_types"
  add_foreign_key "user_details", "users"
  add_foreign_key "user_profession_details", "employees"
  add_foreign_key "user_profession_details", "users"
  add_foreign_key "user_work_details", "employees"
  add_foreign_key "user_work_details", "users"
end
