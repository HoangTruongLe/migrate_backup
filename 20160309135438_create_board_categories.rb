class CreateBoardCategories < ActiveRecord::Migration
  def change
    create_table :board_categories do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.text :description
      t.integer :position, null: false, default: 0

      t.timestamps null: false
    end

    add_index :board_categories, :slug
    add_index :board_categories, :position

    Board::Category.create(
      [
        { name: '住まい', slug: 'housing', position: 10 },
        { name: '求人', slug: 'jobs', position: 20 },
        { name: '売ります', slug: 'sales', position: 30 },
        { name: '買います', slug: 'buys', position: 40 },
        { name: 'レッスン', slug: 'lessons', position: 50 },
        { name: 'サービス', slug: 'services', position: 60 },
        { name: 'サークル', slug: 'circles', position: 70 },
        { name: 'お知らせ', slug: 'news', position: 80 }
      ]
    )
  end
end
