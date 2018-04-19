class UpdateColumnRegionSearchesWordLength < ActiveRecord::Migration
  def up
    change_column :region_searches, :word, :string
  end
end
