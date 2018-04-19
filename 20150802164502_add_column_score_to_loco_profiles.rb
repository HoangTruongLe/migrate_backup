class AddColumnScoreToLocoProfiles < ActiveRecord::Migration
  def change
    add_column :loco_profiles, :score, :integer, null: false, default: 0
    add_index :loco_profiles, :score
  end
end
