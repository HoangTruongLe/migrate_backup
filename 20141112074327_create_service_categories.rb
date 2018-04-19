class CreateServiceCategories < ActiveRecord::Migration
  def change
    create_table :service_categories do |t|
      t.string :name, null: false
      t.integer :position, null: false, default: 0
      t.text :description

      t.timestamps
    end

    add_index :service_categories, :position
  end
end
