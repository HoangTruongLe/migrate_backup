class CreateAffiliateItems < ActiveRecord::Migration
  def change
    create_table :affiliate_items do |t|
      t.integer :affiliate_id, null: false
      t.integer :program, null: false
      t.string :identifier, null: false
      t.integer :parent_id, null: false

      t.timestamps null: false
    end

    add_index :affiliate_items, :affiliate_id
    add_index :affiliate_items, :program
    add_index :affiliate_items, :identifier
    add_index :affiliate_items, :parent_id
  end
end
