class CreateDataSpots < ActiveRecord::Migration
  def change
    create_table :data_spots do |t|
      t.integer :area_id, null: false
      t.string :name, null: false
      t.string :english_name
      t.string :local_name
      t.attachment :image
      t.text :description
      t.string :address
      t.text :access
      t.string :url
      t.string :tel
      t.float :longitude
      t.float :latitude

      t.timestamps null: false
    end

    add_index :data_spots, :area_id
    add_index :data_spots, :name
  end
end
