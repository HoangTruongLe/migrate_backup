class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.string :name, null: false
      t.integer :position, null: false, default: 0
      t.text :description

      t.timestamps
    end

    add_index :zones, :position
  end
end
