class CreateLocoReviewedCharacters < ActiveRecord::Migration
  def change
    create_table :loco_reviewed_characters do |t|
      t.integer :user_id, null: false
      t.integer :character, null: false
      t.integer :count, null: false, default: 0

      t.timestamps null: false
    end

    add_index :loco_reviewed_characters, :user_id
    add_index :loco_reviewed_characters, :character
    add_index :loco_reviewed_characters, %i[user_id character], unique: true
    add_index :loco_reviewed_characters, :count
  end
end
