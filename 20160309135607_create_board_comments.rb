class CreateBoardComments < ActiveRecord::Migration
  def change
    create_table :board_comments do |t|
      t.integer :topic_id, null: false
      t.integer :user_id, null: false
      t.text :content

      t.timestamps null: false
    end

    add_index :board_comments, :topic_id
    add_index :board_comments, :user_id
  end
end
