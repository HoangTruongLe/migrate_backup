class AddColumnAreasZoneId < ActiveRecord::Migration
  def change
    add_column :areas, :zone_id, :integer, null: false, default: 0
    add_index :areas, :zone_id
  end
end
