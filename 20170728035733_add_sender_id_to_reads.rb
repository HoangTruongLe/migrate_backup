class AddSenderIdToReads < ActiveRecord::Migration
  def change
    add_column :wp_reads, :sender_id, :integer
    add_index :wp_reads, :sender_id
  end
end
