class AddAgreeLocoConditionsToUsers < ActiveRecord::Migration
  def change
    add_column :wp_users, :agree_loco_conditions, :boolean
  end
end
