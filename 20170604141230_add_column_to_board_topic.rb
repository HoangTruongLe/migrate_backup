class AddColumnToBoardTopic < ActiveRecord::Migration
  def change
    add_column :board_topics, :score, :integer
  end
end
