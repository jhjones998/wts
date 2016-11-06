class CreateMasterTeches < ActiveRecord::Migration[5.0]
  def change
    create_table :master_teches do |t|
      t.string :wtd_id
      t.integer :level
      t.string :name
      t.string :desc
      t.string :unresearched_descr
      t.boolean :initially_visible

      t.timestamps
    end
    add_index :master_teches, :wtd_id, unique: true
    add_index :master_teches, :name, unique: true
  end
end
