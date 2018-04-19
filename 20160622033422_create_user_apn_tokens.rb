class CreateUserApnTokens < ActiveRecord::Migration
  def change
    create_table :user_apn_tokens do |t|
      t.integer :user_id, null: false
      t.string :token, null: false

      t.timestamps null: false
    end

    add_index :user_apn_tokens, :user_id
    add_index :user_apn_tokens, :token
  end
end
