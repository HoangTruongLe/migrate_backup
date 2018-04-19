class AddCountryIdToAreas < ActiveRecord::Migration
  def change
    add_column :areas, :country_id, :integer, null: false, default: 0
    add_index :areas, :country_id
  end
end
