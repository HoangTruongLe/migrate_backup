class AddColumnCancelReasonIdToOrders < ActiveRecord::Migration
  def change
    add_column :wp_orders, :cancel_reason_id, :integer
  end
end
