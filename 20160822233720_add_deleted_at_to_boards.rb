class AddDeletedAtToBoards < ActiveRecord::Migration
  def change
    add_column :board_topics, :deleted_at, :datetime
    add_index :board_topics, :deleted_at
  end
end
