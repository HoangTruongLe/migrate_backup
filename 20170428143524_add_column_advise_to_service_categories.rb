class AddColumnAdviseToServiceCategories < ActiveRecord::Migration
  def change
    add_column :service_categories, :advise, :text
  end
end
