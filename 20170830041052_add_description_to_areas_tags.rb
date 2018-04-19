class AddDescriptionToAreasTags < ActiveRecord::Migration
  def change
    add_column :areas_tags, :description, :text
  end
end
