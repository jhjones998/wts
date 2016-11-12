class RemoveCountryIdFromTechInstances < ActiveRecord::Migration[5.0]
  def change
    remove_column :tech_instances, :country_id
  end
end
