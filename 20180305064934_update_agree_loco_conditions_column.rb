class UpdateAgreeLocoConditionsColumn < ActiveRecord::Migration
  def change
    add_column :wp_users, :agree_loco_condition, :datetime
    User.where(agree_loco_conditions: false).update_all(agree_loco_condition: nil)
    User.joins(:profile).where('wp_users.agree_loco_conditions' => true).update_all('wp_users.agree_loco_condition = loco_profiles.created_at')
    remove_column :wp_users, :agree_loco_conditions, :boolean
    rename_column :wp_users, :agree_loco_condition, :agree_loco_conditions
  end
end
