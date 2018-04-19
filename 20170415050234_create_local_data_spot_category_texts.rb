class CreateLocalDataSpotCategoryTexts < ActiveRecord::Migration
  def change
    create_table :local_data_spot_category_texts do |t|
      t.integer :category_id, null: false
      t.integer :area_id, null: false
      t.text :description, null: false

      t.timestamps null: false
    end

    add_index :local_data_spot_category_texts, :category_id
    add_index :local_data_spot_category_texts, :area_id
    add_index :local_data_spot_category_texts, %i[category_id area_id], unique: true
  end
end
