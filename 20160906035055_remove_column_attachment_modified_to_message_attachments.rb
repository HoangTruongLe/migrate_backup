class RemoveColumnAttachmentModifiedToMessageAttachments < ActiveRecord::Migration
  def change
    # add_column
    # MessageAttachment.where(attachment_updated_at: nil).update_all('attachment_updated_at = attachment_modified')
    #
    # remove_column :wp_message_attachments, :attachment_modified
  end
end
