class CreateUserPendings < ActiveRecord::Migration
  def change
    create_table :user_pendings do |t|
      t.integer :user_id, null: false
      t.datetime :suspend_at, null: false
      t.datetime :release_at

      t.timestamps null: false
    end

    add_index :user_pendings, :user_id
  end
end
