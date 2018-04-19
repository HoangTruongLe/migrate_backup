class AddColumnSlugToServiceCategories < ActiveRecord::Migration
  def change
    add_column :service_categories, :slug, :string
  end
end
