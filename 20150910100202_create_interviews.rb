class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.integer :user_id, null: false
      t.integer :author_id, null: false
      t.string :title
      t.text :content
      t.datetime :assigned_at, null: false
      t.datetime :published_at

      t.timestamps null: false
    end

    add_index :interviews, :user_id
    add_index :interviews, :assigned_at
    add_index :interviews, :published_at
    add_index :interviews, :author_id
  end
end
