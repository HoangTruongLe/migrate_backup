class CreateUserBanks < ActiveRecord::Migration
  def change
    create_table :user_banks do |t|
      t.integer :user_id, null: false
      t.string :bank_name, length: 50
      t.string :bank_code, length: 10
      t.string :bank_branch_name, length: 50
      t.string :bank_branch_code, length: 10
      t.integer :bank_account_type, length: 2
      t.string :bank_account_number, length: 10
      t.string :bank_account_name, length: 50
      t.string :paypal_account

      t.timestamps null: false
    end

    add_index :user_banks, :user_id, unique: true
  end
end
