class AddColumnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :receipt_name, :string
    add_column :orders, :receipt_at, :integer
  end
end
