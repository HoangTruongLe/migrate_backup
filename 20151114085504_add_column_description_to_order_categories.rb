class AddColumnDescriptionToOrderCategories < ActiveRecord::Migration
  def change
    add_column :order_categories, :description, :text
    add_column :order_categories, :image_file_name,    :string
    add_column :order_categories, :image_content_type, :string
    add_column :order_categories, :image_file_size,    :integer
    add_column :order_categories, :image_updated_at,   :datetime
  end
end
