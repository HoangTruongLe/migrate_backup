class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :wp_users, :tel, :string, length: 30
    add_column :wp_users, :birthday, :date
    add_column :wp_users, :sex, :integer, null: false, default: 0
    add_column :wp_users, :first_name, :string
    add_column :wp_users, :last_name, :string
    add_column :wp_users, :first_name_kana, :string
    add_column :wp_users, :last_name_kana, :string
  end
end
