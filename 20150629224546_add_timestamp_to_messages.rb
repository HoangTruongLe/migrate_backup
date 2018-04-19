class AddTimestampToMessages < ActiveRecord::Migration
  def change
    # add_column :wp_messages, :created_at, :datetime
    # add_column :wp_messages, :updated_at, :datetime
    add_index :wp_messages, :created_at
  end
end
