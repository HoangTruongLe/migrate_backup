class AddColumnInitialPriceToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :initial_price, :integer
    add_column :orders, :initial_price_by_user, :boolean
    add_index :orders, :initial_price
  end
end
