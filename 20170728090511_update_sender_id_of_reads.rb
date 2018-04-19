class UpdateSenderIdOfReads < ActiveRecord::Migration
  def up
    ReadMessage.where(sender_id: nil).all.find_each{ |r| r.update_columns(sender_id: r.sender.id) if r.sender.present? }
  end
end
