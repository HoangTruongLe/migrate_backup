class AddIndexToWpOrders < ActiveRecord::Migration
  def change
    add_index :wp_orders, :order_modified
  end
end
