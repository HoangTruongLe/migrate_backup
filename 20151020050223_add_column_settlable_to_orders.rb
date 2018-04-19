class AddColumnSettlableToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :settlable, :boolean, null: false, default: false
    Order.find_each do |order|
      order.update_columns(settlable: true) if order.ready_settle?
    end
  end
end
