class AddColumnPaidAtToOrders < ActiveRecord::Migration
  def change
    add_column :wp_orders, :paid_at, :datetime
  end
end
