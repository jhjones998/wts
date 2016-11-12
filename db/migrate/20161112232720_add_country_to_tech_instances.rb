class AddCountryToTechInstances < ActiveRecord::Migration[5.0]
  def change
    add_reference :tech_instances, :country, index: true, foreign_key:true
  end
end
