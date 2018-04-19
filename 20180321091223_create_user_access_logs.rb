class CreateUserAccessLogs < ActiveRecord::Migration[4.2][5.0]
  def change
    create_table :user_access_logs, id: :bigint, unsigned: true do |t|
      # FIXME: Cannot use foreign keys because wp_users's type is MyISAM!
      # t.references :user, foreign_key: {to_table: :wp_users}, unsigned: true, limit: 8, null: false
      # t.references :loco, foreign_key: {to_table: :wp_users}, unsigned: true, limit: 8
      t.unsigned_bigint :user_id, null: false, index: true
      t.unsigned_bigint :loco_id, index: true
      t.text :path, null: false

      t.timestamps
    end
  end
end
