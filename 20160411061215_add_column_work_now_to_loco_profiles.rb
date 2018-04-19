class AddColumnWorkNowToLocoProfiles < ActiveRecord::Migration
  def change
    add_column :loco_profiles, :work_now, :boolean, null: false, default: true
    add_index :loco_profiles, :work_now
  end
end
