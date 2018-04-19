class CreateFaqs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.integer :category_id, null: false
      t.integer :position, null: false, default: 0
      t.text :question, null: false
      t.text :answer, null: false

      t.timestamps null: false
    end

    add_index :faqs, :category_id
    add_index :faqs, :position
  end
end
