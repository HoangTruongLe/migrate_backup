class AddFollowAtToAdminUserComments < ActiveRecord::Migration
  def change
    add_column :admin_user_comments, :follow_at, :datetime, null: true
  end
end
