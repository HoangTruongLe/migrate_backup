class CreateYellowCards < ActiveRecord::Migration
  def change
    create_table :yellow_cards do |t|
      t.integer :user_id, null: false
      t.integer :message_id

      t.timestamps null: false
    end

    add_index :yellow_cards, :user_id
    add_index :yellow_cards, :message_id
  end
end
