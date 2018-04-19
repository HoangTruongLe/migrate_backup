class AddColumnAreaIdToUserRecommends < ActiveRecord::Migration
  def change
    add_column :user_recommends, :area_id, :integer
    remove_index :user_recommends, %w[user_id category]
    add_index :user_recommends, %w[user_id category area_id], unique: true
    UserRecommend.find_each do |rec|
      rec.update(area_id: rec.user.area.id) if rec.user.present? && rec.user.area.present?
    end
  end
end
