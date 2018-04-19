class AddAttachmentAvatarImageToUsers < ActiveRecord::Migration
  def self.up
    change_table :wp_users do |t|
      t.attachment :avatar_image
    end
  end

  def self.down
    remove_attachment :wp_users, :avatar_image
  end
end
