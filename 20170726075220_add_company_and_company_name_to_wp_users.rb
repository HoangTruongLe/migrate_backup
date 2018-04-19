class AddCompanyAndCompanyNameToWpUsers < ActiveRecord::Migration
  def change
    add_column :wp_users, :company_name, :string
    add_column :wp_users, :company, :boolean, null: false, default: false
    add_index :wp_users, :company
  end
end
