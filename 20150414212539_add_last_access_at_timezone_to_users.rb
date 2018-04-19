class AddLastAccessAtTimezoneToUsers < ActiveRecord::Migration
  def change
    add_column :wp_users, :last_access_at, :string
    add_column :wp_users, :timezone, :string
  end
end
