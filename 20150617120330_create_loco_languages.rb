class CreateLocoLanguages < ActiveRecord::Migration
  def change
    create_table :loco_languages do |t|
      t.integer :user_id, null: false
      t.integer :language_id, null: false
      t.integer :level, null: false, default: 0

      t.timestamps null: false
    end

    add_index :loco_languages, :user_id
    add_index :loco_languages, :language_id
    add_index :loco_languages, %i[user_id language_id], unique: true
  end
end
