class AddIndexToWpMessages < ActiveRecord::Migration
  def change
    # add_index :wp_messages, :message_modified
    # add_index :wp_message_threads, :message_thread_modified
    if ActiveRecord::Base.connection.table_exists? :wp_users
      # drop_table :wp_users
    end
    create_table :wp_users do |t|
      t.integer :user_registered
      t.timestamps
    end
    add_index :wp_users, :user_registered
  end
end
