class CreateRegionSearches < ActiveRecord::Migration
  def change
    create_table :region_searches do |t|
      t.string :kind, null: false
      t.integer :region_id, null: false
      t.string :word, null: false
      t.integer :user_id

      t.timestamps null: false
    end

    add_index :region_searches, :kind
    add_index :region_searches, :region_id
    add_index :region_searches, %i[kind region_id]
    add_index :region_searches, :word
    add_index :region_searches, :user_id
  end
end
