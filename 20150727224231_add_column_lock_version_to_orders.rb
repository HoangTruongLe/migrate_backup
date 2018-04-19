class AddColumnLockVersionToOrders < ActiveRecord::Migration
  def change
    add_column :wp_orders, :lock_version, :integer, null: false, default: 0
  end
end
