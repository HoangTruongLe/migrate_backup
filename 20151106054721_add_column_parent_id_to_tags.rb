class AddColumnParentIdToTags < ActiveRecord::Migration
  def change
    add_column :wp_tags, :parent_id, :integer
    add_index :wp_tags, :parent_id
  end
end
