class CreateUserStorages < ActiveRecord::Migration
  def change
    create_table :user_storages do |t|
      t.integer :user_id, null: false
      t.text :value, null: false

      t.timestamps null: false
    end

    add_index :user_storages, :user_id, unique: true
  end
end
