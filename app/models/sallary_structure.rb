class SallaryStructure < ActiveRecord::Base
  belongs_to :sallary_component_detail
  belongs_to :employee
end
