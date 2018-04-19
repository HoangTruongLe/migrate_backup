class RemoveIndexAndAddIndexToSegionSearches < ActiveRecord::Migration
  def change
    remove_index :region_searches, :word
    add_index :region_searches, :word, length: 191
  end
end
