class CreateNewsComments < ActiveRecord::Migration
  def change
    create_table :news_comments do |t|
      t.integer :article_id, null: false
      t.integer :user_id, null: false
      t.text :comment, null: false

      t.timestamps null: false
    end

    add_index :news_comments, :article_id
    add_index :news_comments, :user_id
    add_index :news_comments, :created_at
  end
end
