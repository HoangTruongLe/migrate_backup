class ChangeColumnReceiptAt < ActiveRecord::Migration
  def change
    Order.update_all(receipt_at: nil)
    change_column :orders, :receipt_at, :datetime
  end
end
