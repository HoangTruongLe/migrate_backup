class AddColumnStartAtToLocoProfiles < ActiveRecord::Migration
  def change
    add_column :loco_profiles, :start_at, :datetime
    add_index :loco_profiles, :start_at
  end
end
