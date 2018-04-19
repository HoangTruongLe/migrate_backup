class AddWorkNowAtToLocoProfiles < ActiveRecord::Migration
  def change
    # add_column :loco_profiles, :work_now_at, :datetime, null: true
    #
    # # rubocop:disable Rails/SkipsModelValidations
    # LocoProfile.with_work_now(true).update_all('work_now_at = created_at')
    # # rubocop:enable Rails/SkipsModelValidations
  end
end
