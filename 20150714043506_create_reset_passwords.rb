class CreateResetPasswords < ActiveRecord::Migration
  def change
    create_table :reset_passwords do |t|
      t.string :email, null: false
      t.string :confirmation_key, null: false
      t.datetime :expires_at, null: false
      t.boolean :confirmed, null: false, default: false

      t.timestamps null: false
    end

    add_index :reset_passwords, :email
    add_index :reset_passwords, :confirmation_key
  end
end
