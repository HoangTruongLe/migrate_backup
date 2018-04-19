class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.integer :zone_id, null: false
      t.string :timezone, null: false
      t.text :description
      t.integer :position, null: false, default: 0
      t.string :alter_name

      t.timestamps null: false
    end

    add_index :countries, :slug
    add_index :countries, :zone_id
    add_index :countries, :position
  end
end
