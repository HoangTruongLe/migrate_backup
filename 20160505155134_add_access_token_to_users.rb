class AddAccessTokenToUsers < ActiveRecord::Migration
  def change
    add_column :wp_users, :access_token, :string
    add_index :wp_users, :access_token
  end
end
