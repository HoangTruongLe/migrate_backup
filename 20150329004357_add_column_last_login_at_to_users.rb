class AddColumnLastLoginAtToUsers < ActiveRecord::Migration
  def change
    add_column :wp_users, :last_login_at, :datetime
  end
end
