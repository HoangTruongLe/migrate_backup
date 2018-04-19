class AddColumnsToLocoProfiles < ActiveRecord::Migration
  def change
    add_column :loco_profiles, :quit_message, :text
    add_column :loco_profiles, :quit_reason, :integer
    add_column :loco_profiles, :quit_at, :datetime

    add_index :loco_profiles, :quit_reason
    add_index :loco_profiles, :quit_at
  end
end
