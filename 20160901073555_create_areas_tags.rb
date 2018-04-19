class CreateAreasTags < ActiveRecord::Migration
  def change
    create_table :areas_tags do |t|
      t.integer :area_id, null: false
      t.integer :tag_id, null: false
      t.integer :count, null: false, default: 0
      t.float :ratio, null: false, default: 0
      t.float :score, null: false, default: 0

      t.timestamps null: false
    end

    add_index :areas_tags, :area_id
    add_index :areas_tags, :tag_id
    add_index :areas_tags, %i[area_id tag_id], unique: true
  end
end
