class CreateUserWebpushSubscriptions < ActiveRecord::Migration
  def change
    create_table :user_webpush_subscriptions do |t|
      t.integer :user_id, null: false
      t.string :subscription, null: false

      t.timestamps null: false
    end

    add_index :user_webpush_subscriptions, :user_id
  end
end
