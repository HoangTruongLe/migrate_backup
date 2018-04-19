class CreateMessages < ActiveRecord::Migration
  def change
    # create_table :messages do |t|
    #   t.integer :order_id
    #   t.integer :user_id
    #   t.text :content
    #   t.string :user_agent
    #
    #   t.timestamps null: false
    # end
    #
    # add_index :messages, :order_id
    # add_index :messages, :user_id
    # add_index :messages, :created_at

    # ActiveRecord::Base.connection.execute("
    #     INSERT INTO messages
    #         (id, order_id, user_id, content, user_agent, updated_at, created_at)
    #         SELECT message_id, message_thread_order_id, message_user_id, message_content, user_agent,
    #             updated_at, created_at
    #             FROM wp_messages LEFT JOIN wp_message_threads
    #                 ON wp_message_threads.message_thread_id = wp_messages.message_thread_id
    #             WHERE message_thread_order_id IS NOT NULL
    # ")
  end
end
