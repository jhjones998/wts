class CreateTechInstances < ActiveRecord::Migration[5.0]
  def change
    create_table :tech_instances do |t|
      t.string :country
      t.belongs_to :master_tech, foreign_key: true
      t.boolean :visible
      t.boolean :researching
      t.integer :partial_credit

      t.timestamps
    end
  end
end
