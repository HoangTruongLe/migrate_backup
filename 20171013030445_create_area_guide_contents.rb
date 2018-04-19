class CreateAreaGuideContents < ActiveRecord::Migration
  def change
    create_table :area_guide_contents do |t|
      t.integer :area_id, null: false
      t.string :slug, null: false
      t.string :title, null: false
      t.text :content

      t.timestamps null: false
    end
  end
end
