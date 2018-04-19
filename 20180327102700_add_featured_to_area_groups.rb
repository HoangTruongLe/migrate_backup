class AddFeaturedToAreaGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :area_groups, :featured, :boolean, default: false, null: false
  end
end
