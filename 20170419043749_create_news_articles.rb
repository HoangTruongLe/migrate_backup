class CreateNewsArticles < ActiveRecord::Migration
  def change
    create_table :news_articles do |t|
      t.string :kind, null: false
      t.integer :region_id, null: false
      t.integer :site_id, null: false
      t.string :url, null: false
      t.string :title, null: false
      t.text :content
      t.attachment :image
      t.integer :picker_id, null: false
      t.integer :score, null: false, default: 0

      t.timestamps null: false
    end

    add_index :news_articles, %i[kind region_id]
    add_index :news_articles, :site_id
    add_index :news_articles, %i[kind region_id url], unique: true
    add_index :news_articles, :url
    add_index :news_articles, :title
    add_index :news_articles, :picker_id
    add_index :news_articles, :score
    add_index :news_articles, :created_at
  end
end
