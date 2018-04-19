class AddColumnTimezoneToAreas < ActiveRecord::Migration
  def change
    add_column :areas, :timezone, :string
    add_column :areas, :parent_id, :integer
    add_index :areas, :parent_id
  end
end
