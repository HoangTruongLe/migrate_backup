class AddTrackByAdminToWpUsers < ActiveRecord::Migration
  def change
    add_column :wp_users, :track_by_admin, :boolean, default: false
    add_index :wp_users, :track_by_admin
  end
end
