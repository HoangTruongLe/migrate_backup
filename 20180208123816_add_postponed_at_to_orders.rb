class AddPostponedAtToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :postponed_at, :datetime, null: true
  end
end
