class ChangeTableMasterTechRename < ActiveRecord::Migration[5.0]
  def change
    change_table :master_teches do |t|
      t.rename :wtd_id, :wts_id
      t.rename :unresearched_desc, :unresearched_desc
    end
  end
end
