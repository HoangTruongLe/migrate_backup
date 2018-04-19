class AddWorkStatusToLocoProfiles < ActiveRecord::Migration
  def change
    add_column :loco_profiles, :work_status, :integer, limit: 1, default: LocoProfile::WORK_STATUS[:open], null: false

    # Migrate work_now
    LocoProfile.find_each do |profile|
      work_status = profile.work_now ? LocoProfile::WORK_STATUS[:open] : LocoProfile::WORK_STATUS[:closed]

      # rubocop:disable Rails/SkipsModelValidations
      profile.update_column(:work_status, work_status)
      # rubocop:enable Rails/SkipsModelValidations
    end
  end
end
