json.array!(@user_details) do |user_detail|
  json.extract! user_detail, :id, :first_name, :last_name, :gender, :dob, :official_phone, :official_mobile, :fax, :official_email, :pan_no, :blood_group_id, :department_id, :designation_id, :grade_id, :religion_id, :user_type_id, :user_id
  json.url user_detail_url(user_detail, format: :json)
end
