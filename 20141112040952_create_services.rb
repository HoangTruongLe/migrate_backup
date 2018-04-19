class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :area_id, null: false
      t.integer :user_id, null: false
      t.integer :service_category_id, null: false
      t.string :title, null: false
      t.integer :price
      t.text :description
      t.datetime :published_at

      t.timestamps
    end

    add_index :services, :area_id
    add_index :services, :user_id
    add_index :services, :service_category_id
  end
end
