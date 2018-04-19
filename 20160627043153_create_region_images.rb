class CreateRegionImages < ActiveRecord::Migration
  def change
    create_table :region_images do |t|
      t.integer :kind, null: false
      t.integer :region_id, null: false
      t.attachment :image
      t.integer :position, null: false, default: 0

      t.timestamps null: false
    end

    add_index :region_images, %i[kind region_id]
    add_index :region_images, :kind
    add_index :region_images, :region_id
    add_index :region_images, :position
  end
end
