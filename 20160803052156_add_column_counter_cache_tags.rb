class AddColumnCounterCacheTags < ActiveRecord::Migration
  def change
    add_column :wp_tags, :users_count, :integer, null: false, default: 0
    add_column :wp_tags, :questions_count, :integer, null: false, default: 0
    add_column :wp_tags, :services_count, :integer, null: false, default: 0
    add_index :wp_tags, :users_count
    add_index :wp_tags, :questions_count
    add_index :wp_tags, :services_count
  end
end
