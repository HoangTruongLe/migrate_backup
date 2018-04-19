class UpdateIndexes < ActiveRecord::Migration[5.0]
  def change
    remove_index :board_comments, :deleted_at if index_exists? :board_comments, :deleted_at
    remove_index :user_recommends, %i[user_id category] if index_exists? :user_recommends, %i[user_id category]
    add_index :user_recommends, %i[user_id category area_id] \
      unless index_exists? :user_recommends, %i[user_id category area_id]
  end
end
