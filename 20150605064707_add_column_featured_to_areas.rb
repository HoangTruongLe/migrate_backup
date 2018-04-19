class AddColumnFeaturedToAreas < ActiveRecord::Migration
  def change
    add_column :areas, :featured, :boolean, default: false
  end
end
