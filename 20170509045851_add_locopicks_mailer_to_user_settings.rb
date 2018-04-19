class AddLocopicksMailerToUserSettings < ActiveRecord::Migration
  def change
    add_column :user_settings, :locopicks_mailer, :boolean, default: true, null: false
  end
end
