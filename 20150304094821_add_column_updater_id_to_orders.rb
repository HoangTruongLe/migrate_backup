class AddColumnUpdaterIdToOrders < ActiveRecord::Migration
  def change
    add_column :wp_orders, :updater_id, :integer, null: false, default: 0
    add_index :wp_orders, :updater_id
  end
end
