class AddColumnResignedToUsers < ActiveRecord::Migration
  def change
    # add_column :wp_users, :resigned, :boolean, default: false, null: false
    add_column :wp_users, :resigned_at, :datetime
  end
end
