json.array!(@designations) do |designation|
  json.extract! designation, :id, :name, :is_active
  json.url designation_url(designation, format: :json)
end
