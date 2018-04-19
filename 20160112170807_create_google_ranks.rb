class CreateGoogleRanks < ActiveRecord::Migration
  def change
    create_table :google_ranks do |t|
      t.integer :area_id, null: false
      t.integer :tag_id, null: false
      t.datetime :checked_at, null: false
      t.integer :rank, null: false
      t.string :uri, length: 1000

      t.timestamps null: false
    end

    add_index :google_ranks, :area_id
    add_index :google_ranks, :tag_id
    add_index :google_ranks, :checked_at
  end
end
