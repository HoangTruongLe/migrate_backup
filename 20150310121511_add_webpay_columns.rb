class AddWebpayColumns < ActiveRecord::Migration
  def change
    add_column :wp_users, :webpay_customer_id, :string
    add_column :wp_orders, :webpay_payment_id, :string
  end
end
