class CreateOrderCategories < ActiveRecord::Migration
  def change
    create_table :order_categories do |t|
      t.string :name, null: false
      t.integer :position
      t.text :loco_template
      t.text :user_template

      t.timestamps
    end

    add_index :order_categories, :position
  end
end
