class AddColumnCounterToWpTags < ActiveRecord::Migration
  def change
    add_column :wp_tags, :orders_count, :integer, null: false, default: 0
    add_index :wp_tags, :orders_count
  end
end
