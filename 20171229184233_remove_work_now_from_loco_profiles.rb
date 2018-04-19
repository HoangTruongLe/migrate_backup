class RemoveWorkNowFromLocoProfiles < ActiveRecord::Migration
  def change
    remove_column :loco_profiles, :work_now, :boolean, null: false, default: true
  end
end
