class CreateLocalDataSpotCategories < ActiveRecord::Migration
  def change
    create_table :local_data_spot_categories do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.integer :parent_id
      t.string :title, null: false
      t.integer :position, null: false, default: 0

      t.timestamps null: false
    end

    add_index :local_data_spot_categories, :slug, unique: true
    add_index :local_data_spot_categories, :position
  end
end
