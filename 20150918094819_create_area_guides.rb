class CreateAreaGuides < ActiveRecord::Migration
  def change
    create_table :area_guides do |t|
      t.integer :area_id, null: false
      t.integer :kind, null: false, default: 0
      t.text :security
      t.text :climate
      t.text :best_season
      t.text :commodity_price
      t.text :budget
      t.text :holidays
      t.text :festivals

      t.timestamps null: false
    end

    add_index :area_guides, :area_id
  end
end
