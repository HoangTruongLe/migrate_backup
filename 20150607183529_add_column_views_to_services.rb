class AddColumnViewsToServices < ActiveRecord::Migration
  def change
    add_column :services, :views, :integer, null: false, default: 0
    add_index :services, :views
  end
end
