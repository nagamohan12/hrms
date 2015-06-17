json.array!(@blood_groups) do |blood_group|
  json.extract! blood_group, :id, :name, :is_active
  json.url blood_group_url(blood_group, format: :json)
end
