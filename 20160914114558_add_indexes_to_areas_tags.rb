class AddIndexesToAreasTags < ActiveRecord::Migration
  def change
    add_index :areas_tags, :count
    add_index :areas_tags, :ratio
    add_index :areas_tags, :score
  end
end
