class CreateAccesses < ActiveRecord::Migration[5.0]
  def change
    create_table :accesses do |t|
      t.belongs_to :user, foreign_key: true
      t.string :country
      t.boolean :artifacts

      t.timestamps
    end
  end
end
