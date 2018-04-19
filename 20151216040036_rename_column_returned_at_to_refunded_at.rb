class RenameColumnReturnedAtToRefundedAt < ActiveRecord::Migration
  def change
    rename_column :orders, :returned_at, :refunded_at
  end
end
