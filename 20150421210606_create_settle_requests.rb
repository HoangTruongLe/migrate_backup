class CreateSettleRequests < ActiveRecord::Migration
  def change
    create_table :settle_requests do |t|
      t.integer :user_id, null: false
      t.datetime :settled_at
      t.integer :amount

      t.timestamps null: false
    end

    add_index :settle_requests, :user_id
    add_index :settle_requests, :settled_at

    add_column :wp_orders, :settle_request_id, :integer
    add_index :wp_orders, :settle_request_id
  end
end
