class AddWpServiceIdToServices < ActiveRecord::Migration
  def change
    add_column :services, :wp_service_id, :integer
    add_index :services, :wp_service_id
  end
end
