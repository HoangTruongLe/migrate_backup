class CreateOrdersTags < ActiveRecord::Migration
  def change
    create_table :orders_tags do |t|
      t.integer :order_id, null: false
      t.integer :tag_id, null: false

      t.timestamps null: false
    end
    add_index :orders_tags, :order_id
    add_index :orders_tags, :tag_id
    add_index :orders_tags, %i[order_id tag_id], unique: true
  end
end
