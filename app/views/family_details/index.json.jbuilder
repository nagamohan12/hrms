json.array!(@family_details) do |family_detail|
  json.extract! family_detail, :id, :name, :dob, :nationality, :gender, :blood_group_id, :profession, :relationship, :is_dependent, :user_id
  json.url family_detail_url(family_detail, format: :json)
end
