class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :title, null: false
      t.integer :target, null: false, default: 0
      t.text :content
      t.datetime :publish_at, null: false

      t.timestamps null: false
    end

    add_index :announcements, :target
    add_index :announcements, :publish_at
  end
end
