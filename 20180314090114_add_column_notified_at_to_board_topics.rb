class AddColumnNotifiedAtToBoardTopics < ActiveRecord::Migration[5.0]
  def change
    add_column :board_topics, :notified_at, :datetime
    # rubocop:disable Rails/SkipsModelValidations
    Board::Topic.update_all(notified_at: Time.zone.now)
    # rubocop:enable Rails/SkipsModelValidations
  end
end
