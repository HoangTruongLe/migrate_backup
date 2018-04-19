class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.text :description
      t.integer :position, null: false, default: 0

      t.timestamps null: false
    end

    add_index :areas, :slug, unique: true
    add_index :areas, :position
  end
end
