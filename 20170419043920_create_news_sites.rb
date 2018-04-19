class CreateNewsSites < ActiveRecord::Migration
  def change
    create_table :news_sites do |t|
      t.string :domain, null: false
      t.string :title, null: false
      t.string :description
      t.attachment :logo
      t.integer :score, null: false, default: 0

      t.timestamps null: false
    end

    add_index :news_sites, :domain, unique: true
    add_index :news_sites, :score
  end
end
