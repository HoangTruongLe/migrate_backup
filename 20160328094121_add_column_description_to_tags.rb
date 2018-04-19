class AddColumnDescriptionToTags < ActiveRecord::Migration
  def change
    add_column :wp_tags, :description, :text
  end
end
