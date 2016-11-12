class RenameCountryInTechInstances < ActiveRecord::Migration[5.0]
  def change
    change_table :tech_instances do |t|
      t.rename :country, :country_id
    end
  end
end
