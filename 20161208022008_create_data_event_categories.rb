class CreateDataEventCategories < ActiveRecord::Migration
  def change
    create_table :data_event_categories do |t|
      t.string :name, null: false
      t.integer :position, null: false, default: 1
      t.string :slug, null: false
      t.text :description

      t.timestamps null: false
    end

    add_index :data_event_categories, :name
    add_index :data_event_categories, :position
    add_index :data_event_categories, :slug, unique: true

    return unless LocalData::EventCategory.count.zero?
    LocalData::EventCategory.create(
      [
        { name: '展示会＆見本市', position: 1, slug: 'exhibitions' },
        { name: '観光イベント', position: 2, slug: 'tourisms' },
        { name: 'スポーツ', position: 3, slug: 'sports' },
        { name: 'アート＆演劇', position: 4, slug: 'arts' },
        { name: '伝統行事', position: 5, slug: 'traditionals' },
        { name: 'その他イベント', position: 6, slug: 'events' }
      ]
    )
  end
end
