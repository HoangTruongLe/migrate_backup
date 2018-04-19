class AddColumnReturnedAtToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :returned_at, :datetime
  end
end
