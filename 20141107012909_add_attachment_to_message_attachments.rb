class AddAttachmentToMessageAttachments < ActiveRecord::Migration
  def up
    add_attachment :wp_message_attachments, :attachment
  end

  def down
    remove_attachment :wp_message_attachments, :attachment
  end
end
