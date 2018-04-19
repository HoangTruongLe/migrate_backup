class CreateUserSettings < ActiveRecord::Migration
  def change
    create_table :user_settings do |t|
      t.integer :user_id
      t.boolean :question_mailer, null: false, default: true
      t.boolean :board_mailer, null: false, default: true

      t.timestamps null: false
    end

    add_index :user_settings, :user_id, unique: true

    User.unscoped.find_each(&:create_setting)
  end
end
