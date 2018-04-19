class CreatePageQuotes < ActiveRecord::Migration
  def change
    create_table :page_quotes do |t|
      t.string :title, null: false
      t.text :quote1
      t.text :quote2
      t.text :quote3
      t.string :url, null: false
      t.string :site_title, null: false
      t.string :site_url, null: false

      t.timestamps null: false
    end
  end
end
