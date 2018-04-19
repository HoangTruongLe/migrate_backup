class AddSentConfirmEmailAtAndDeletedAtToAreaCandidates < ActiveRecord::Migration[4.2][5.0]
  def change
    add_column :area_candidates, :sent_confirm_email_at, :datetime
    add_column :area_candidates, :deleted_at, :datetime
  end
end
