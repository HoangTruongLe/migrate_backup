class CreateUnconfirmedEmails < ActiveRecord::Migration
  def change
    create_table :unconfirmed_emails do |t|
      t.integer :user_id, null: false
      t.string :email, null: false
      t.string :confirmation_key, null: false
      t.datetime :expires_at, null: false
      t.boolean :confirmed, null: false, default: false

      t.timestamps null: false
    end

    add_index :unconfirmed_emails, :user_id
    add_index :unconfirmed_emails, :confirmation_key, unique: true
  end
end
