class AddColumnCommissionsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :commission_loco, :float, null: false, default: 0.2
    add_column :orders, :commission_user, :float, null: false, default: 0.1
    add_column :loco_profiles, :commission_loco, :float, null: false, default: 0.2
    add_column :loco_profiles, :commission_user, :float, null: false, default: 0.1
  end
end
