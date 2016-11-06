class CreateArtifacts < ActiveRecord::Migration[5.0]
  def change
    create_table :artifacts do |t|
      t.string :country
      t.integer :l1
      t.integer :l2
      t.integer :l3
      t.integer :l4
      t.integer :l5
      t.integer :l6

      t.timestamps
    end
  end
end
