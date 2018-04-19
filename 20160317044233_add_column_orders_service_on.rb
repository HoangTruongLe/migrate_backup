class AddColumnOrdersServiceOn < ActiveRecord::Migration
  def change
    add_column :orders, :service_on, :date
    add_index :orders, :service_on
  end
end
