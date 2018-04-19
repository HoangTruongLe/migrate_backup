class RemoveUnnecessaryColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :postponement_reason, :text if column_exists? :orders, :postponement_reason
    remove_column :wp_users, :type, :string, default: 'Client', null: false if column_exists? :wp_users, :type
    remove_column :wp_users, :follow_by_admin_at, :datetime if column_exists? :wp_users, :follow_by_admin_at
  end
end
