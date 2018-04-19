class AddColumnConfirmedAtToUser < ActiveRecord::Migration
  def change
    add_column :wp_users, :email_confirmed_at, :datetime
    User.update_all('email_confirmed_at = user_registered')
  end
end
