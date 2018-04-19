class AddColumnOnlineToUsers < ActiveRecord::Migration
  def change
    add_column :wp_users, :online, :boolean, null: false, default: false
  end
end
