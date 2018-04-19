class ChangeColumnUsersAgreeLocoConditionsNullFalse < ActiveRecord::Migration
  def change
    User.where(agree_loco_conditions: nil).update_all(agree_loco_conditions: false)
    change_column :wp_users, :agree_loco_conditions, :boolean, null: false, default: false
  end
end
