class CreateAdminUserComments < ActiveRecord::Migration
  def change
    create_table :admin_user_comments do |t|
      t.integer :user_id, null: false
      t.text :comment, null: false
      t.integer :updater_id, null: false

      t.timestamps null: false
    end

    add_index :admin_user_comments, :user_id
    add_index :admin_user_comments, :updater_id
  end
end
