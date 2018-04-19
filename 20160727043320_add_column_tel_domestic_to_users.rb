class AddColumnTelDomesticToUsers < ActiveRecord::Migration
  def change
    add_column :wp_users, :tel_domestic, :string
  end
end
