class UpdateLengthOfUrls < ActiveRecord::Migration
  def change
    ActiveRecord::Base.connection.tables.each do |table|
      ActiveRecord::Base.connection.execute("ALTER TABLE #{table} ROW_FORMAT=DYNAMIC;")
    end

    change_column :data_events, :url, :string
    change_column :data_spots, :url, :string
    change_column :news_articles, :url, :string
    change_column :page_quotes, :url, :string
    change_column :travelagents, :url, :string
  end
end
