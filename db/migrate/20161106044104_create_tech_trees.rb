class CreateTechTrees < ActiveRecord::Migration[5.0]
  def change
    create_table :tech_trees do |t|
      t.belongs_to :master_tech, foreign_key: true
      t.references :master_tech

      t.timestamps
    end
  end
end
