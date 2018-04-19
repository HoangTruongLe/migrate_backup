class AddColumnAbandonedAtToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :abandoned_at, :datetime
    add_index :orders, :abandoned_at
  end
end
