class RemoveColumnsAttachmentFormUserCertification < ActiveRecord::Migration
  def change
    remove_column :user_certifications, :attachment_file_name, :string
    remove_column :user_certifications, :attachment_content_type, :string
    remove_column :user_certifications, :attachment_file_size, :integer
    remove_column :user_certifications, :attachment_updated_at, :datetime
  end
end
