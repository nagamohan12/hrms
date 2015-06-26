json.array!(@employees) do |employee|
  json.extract! employee, :id, :emp_id, :email, :username, :user_id
  json.url employee_url(employee, format: :json)
end
