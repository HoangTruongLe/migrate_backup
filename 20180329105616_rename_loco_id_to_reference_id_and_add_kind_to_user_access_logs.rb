class RenameLocoIdToReferenceIdAndAddKindToUserAccessLogs < ActiveRecord::Migration[4.2][5.0]
  def up
    rename_column :user_access_logs, :loco_id, :reference_id
    change_column :user_access_logs, :reference_id, :integer, limit: 8, unsigned: true, null: false
    add_column :user_access_logs, :kind, :string, limit: 50
    add_index :user_access_logs, :kind

    # rubocop:disable Rails/SkipsModelValidations
    UserAccessLog.update_all(kind: UserAccessLog::Kind::LOCO)
    # rubocop:enable Rails/SkipsModelValidations
    change_column :user_access_logs, :kind, :string, limit: 50, null: false
  end

  def down
    change_column :user_access_logs, :reference_id, :integer, limit: 8, unsigned: true
    rename_column :user_access_logs, :reference_id, :loco_id
    remove_column :user_access_logs, :kind
  end
end
