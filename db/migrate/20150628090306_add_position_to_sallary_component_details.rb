class AddPositionToSallaryComponentDetails < ActiveRecord::Migration
  def change
    add_column :sallary_component_details, :position, :integer
  end
end
