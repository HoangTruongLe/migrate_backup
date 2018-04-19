class CreateAreaGroups < ActiveRecord::Migration
  def change
    create_table :area_groups do |t|
      t.integer :country_id
      t.string :slug, null: false
      t.string :name, null: false
      t.string :kana
      t.string :alter_name
      t.integer :position
      t.text :description

      t.timestamps null: false
    end

    add_index :area_groups, :country_id
    add_index :area_groups, :slug, unique: true
    add_index :area_groups, :name
    add_index :area_groups, :position
  end
end
