json.array!(@sallary_component_details) do |sallary_component_detail|
  json.extract! sallary_component_detail, :id, :name, :print_name, :component_type, :amt_per, :status, :amt_per_value
  json.url sallary_component_detail_url(sallary_component_detail, format: :json)
end
