json.array!(@personnel_details) do |personnel_detail|
  json.extract! personnel_detail, :id, :birth_place, :caste, :nationality, :voter_id, :aadhar_no, :marital_status, :anniversary_date, :spouse_name, :no_of_children, :personnel_email, :personnel_email1, :personnel_mobile, :personnel_mobile1, :emergency_contact_number, :user_id
  json.url personnel_detail_url(personnel_detail, format: :json)
end
