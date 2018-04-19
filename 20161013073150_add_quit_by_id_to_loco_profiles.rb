class AddQuitByIdToLocoProfiles < ActiveRecord::Migration
  def change
    add_column :loco_profiles, :quit_by_id, :integer
    add_index :loco_profiles, :quit_by_id
    LocoProfile.where('quit_at IS NOT NULL').update_all('quit_by_id = user_id')
  end
end
