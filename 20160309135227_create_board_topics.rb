class CreateBoardTopics < ActiveRecord::Migration
  def change
    create_table :board_topics do |t|
      t.integer :user_id, null: false
      t.integer :area_id, null: false
      t.integer :category_id, null: false
      t.string :title, null: false
      t.text :content
      t.attachment :image1
      t.attachment :image2
      t.attachment :image3

      t.timestamps null: false
    end

    add_index :board_topics, :user_id
    add_index :board_topics, :area_id
    add_index :board_topics, :category_id
  end
end
