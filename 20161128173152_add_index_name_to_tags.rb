class AddIndexNameToTags < ActiveRecord::Migration
  def change
    add_column :wp_tags, :name, :string
    add_index :wp_tags, :name
  end
end
