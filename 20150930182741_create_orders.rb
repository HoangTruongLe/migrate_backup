class CreateOrders < ActiveRecord::Migration
  def change
    # create_table :orders do |t|
    #   t.integer :user_id, null: false
    #   t.integer :receive_user_id, null: false
    #   t.integer :category_id
    #   t.integer :price
    #   t.integer :order_status, null: false, default: 1
    #   t.integer :service_id
    #   t.datetime :service_at
    #   t.datetime :finished_at
    #   t.datetime :paid_at
    #   t.datetime :settled_at
    #   t.datetime :canceled_at
    #   t.integer :cancel_reason_id
    #   t.string :payment_id
    #   t.string :webpay_payment_id
    #   t.integer :settle_request_id
    #   t.integer :updater_id, null: false, default: 0
    #   t.text :admin_memo
    #   t.integer :lock_version, null: false, default: 0
    #
    #   t.timestamps null: false
    # end
    #
    # add_index :orders, :user_id
    # add_index :orders, :receive_user_id
    # add_index :orders, :category_id
    # add_index :orders, :updater_id
    # add_index :orders, :settle_request_id
    # add_index :orders, :cancel_reason_id
    # add_index :orders, :service_id
    # add_index :orders, :service_at
    # add_index :orders, :order_status
    # add_index :orders, :paid_at
    # add_index :orders, :finished_at
    # add_index :orders, :settled_at
    # add_index :orders, :created_at
    # add_index :orders, :updated_at

    # ActiveRecord::Base.connection.execute("
    #     INSERT INTO orders
    #         (id, user_id, receive_user_id, category_id, price, order_status,
    #             service_id, service_at, finished_at, paid_at, settled_at,
    #             canceled_at, cancel_reason_id, payment_id, webpay_payment_id,
    #             settle_request_id, updater_id, lock_version, updated_at, created_at)
    #         SELECT order_id, order_user_id, receive_user_id, order_category_id, order_service_price, order_status,
    #             order_service_id, order_service_datetime, order_finished, paid_at, settled_at,
    #             order_cancel_datetime, cancel_reason_id, order_payment_id, webpay_payment_id,
    #             settle_request_id, updater_id, lock_version, order_modified, order_created FROM wp_orders
    # ")
  end
end
