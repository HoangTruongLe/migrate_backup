class AddColumnOrderCategoryIdToOrders < ActiveRecord::Migration
  def change
    add_column :wp_orders, :order_category_id, :integer
    add_index :wp_orders, :order_category_id
  end
end
