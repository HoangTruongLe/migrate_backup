class AddColumnNewsletterMailerToUserSettings < ActiveRecord::Migration
  def change
    add_column :user_settings, :newsletter_mailer, :boolean, null: false, default: true, after: 'board_mailer'
  end
end
