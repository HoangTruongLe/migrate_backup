class AddIndexToWpReads < ActiveRecord::Migration
  def change
    add_column :wp_reads, :read_order_message_id, :integer
    add_index :wp_reads, :read_order_message_id
  end
end
