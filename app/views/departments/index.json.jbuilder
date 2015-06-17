json.array!(@departments) do |department|
  json.extract! department, :id, :name, :is_active
  json.url department_url(department, format: :json)
end
