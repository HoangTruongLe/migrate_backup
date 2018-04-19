class CreateAreaGuideContentImages < ActiveRecord::Migration
  def change
    create_table :area_guide_content_images do |t|
      t.integer :content_id, null: false
      t.attachment :image

      t.timestamps null: false
    end
  end
end
