class UpdateLengthOfUrlFields < ActiveRecord::Migration
  def change
    change_column :data_events, :url, :string, length: 1000
    change_column :data_spots, :url, :string, length: 1000
    change_column :news_articles, :url, :string, length: 1000
    change_column :page_quotes, :url, :string, length: 1000
    change_column :travelagents, :url, :string, length: 1000
  end
end
