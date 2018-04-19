class AddColumnCancelByIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :cancel_by_id, :integer
  end
end
