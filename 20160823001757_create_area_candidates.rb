class CreateAreaCandidates < ActiveRecord::Migration
  def change
    create_table :area_candidates do |t|
      t.string :name, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end

    add_index :area_candidates, :name
    add_index :area_candidates, :user_id
  end
end
