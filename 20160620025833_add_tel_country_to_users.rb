class AddTelCountryToUsers < ActiveRecord::Migration
  def change
    add_column :wp_users, :tel_country, :integer
  end
end
