class AddColumnsExchangeTelToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :user_exchange_tel, :boolean
    add_column :orders, :loco_exchange_tel, :boolean
  end
end
