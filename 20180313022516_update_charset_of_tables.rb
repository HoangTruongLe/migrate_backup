class UpdateCharsetOfTables < ActiveRecord::Migration[5.0]
  def change
    return if Rails.env.production?

    ActiveRecord::Base.connection.tables.each do |table|
      ActiveRecord::Base.connection.execute("ALTER TABLE #{table} CONVERT TO CHARACTER SET utf8mb4;")
    end

    change_column :affiliates, :memo, :text
    change_column :area_groups, :description, :text
    change_column :area_guide_contents, :content, :text
    change_column :news_articles, :content, :text
    change_column :news_comments, :comment, :text
  end
end
