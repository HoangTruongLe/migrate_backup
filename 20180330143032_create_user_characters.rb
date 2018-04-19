class CreateUserCharacters < ActiveRecord::Migration[4.2][5.0]
  def change
    create_table :user_characters, id: :bigint, unsigned: true do |t|
      t.integer :user_id, unsigned: true, limit: 8, null: false
      t.integer :character, null: false
      t.integer :created_by, default: 0, null: false

      t.timestamps
    end
  end
end
