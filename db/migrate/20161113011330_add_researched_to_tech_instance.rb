class AddResearchedToTechInstance < ActiveRecord::Migration[5.0]
  def change
    add_column :tech_instances, :researched, :boolean
  end
end
