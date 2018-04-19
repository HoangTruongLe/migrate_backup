class CreateUserBlocks < ActiveRecord::Migration
  def change
    create_table :user_blocks do |t|
      t.integer :blocking_user_id, null: false
      t.integer :blocked_user_id, null: false

      t.timestamps null: false
    end
    add_column :user_blocks, :read_target, :string
    add_index :user_blocks, :blocking_user_id
    add_index :user_blocks, :blocked_user_id
    add_index :user_blocks, %i[blocking_user_id blocked_user_id], unique: true
  end
end
