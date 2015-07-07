json.array!(@sallary_structures) do |sallary_structure|
  json.extract! sallary_structure, :id, :name, :amount, :sallary_component_detail_id, :employee_id
  json.url sallary_structure_url(sallary_structure, format: :json)
end
