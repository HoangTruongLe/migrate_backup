class AddColumnPublishAtCurations < ActiveRecord::Migration
  def change
    add_column :curations, :publish_at, :datetime
    add_index :curations, :publish_at
  end
end
