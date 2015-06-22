json.array!(@user_work_details) do |user_work_detail|
  json.extract! user_work_detail, :id, :login, :logout, :total_time, :user_id
  json.url user_work_detail_url(user_work_detail, format: :json)
end
