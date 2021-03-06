class CreateLocoTags < ActiveRecord::Migration
  def change
    create_table :loco_tags do |t|
      t.integer :user_id, null: false
      t.integer :tag_id, null: false

      t.timestamps null: false
    end

    add_index :loco_tags, :user_id
    add_index :loco_tags, :tag_id
    add_index :loco_tags, %i[user_id tag_id], unique: true
  end
end
