class AddColumnLastLoginInToUsers < ActiveRecord::Migration
  def change
    add_column :wp_users, :last_login_in, :string
  end
end
