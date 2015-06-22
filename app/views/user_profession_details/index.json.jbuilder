json.array!(@user_profession_details) do |user_profession_detail|
  json.extract! user_profession_detail, :id, :emp_id, :doj, :status, :reporting_manager, :user_id
  json.url user_profession_detail_url(user_profession_detail, format: :json)
end
