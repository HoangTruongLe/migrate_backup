class AddColumnLongitudeToAreas < ActiveRecord::Migration
  def change
    add_column :areas, :longitude, :float
    add_column :areas, :latitude, :float
    add_index :areas, :longitude
    add_index :areas, :latitude
  end
end
