class CreateFaqCategories < ActiveRecord::Migration
  def change
    create_table :faq_categories do |t|
      t.string :name, null: false
      t.integer :position, null: false, default: 0

      t.timestamps null: false
    end

    add_index :faq_categories, :position
  end
end
