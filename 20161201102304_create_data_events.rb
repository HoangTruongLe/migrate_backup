class CreateDataEvents < ActiveRecord::Migration
  def change
    create_table :data_events do |t|
      t.integer :category_id, null: false
      t.integer :area_id, null: false
      t.integer :user_id, null: false
      t.string :name, null: false
      t.string :english_name
      t.string :local_name
      t.attachment :image
      t.text :description
      t.text :memo
      t.date :start_on
      t.date :end_on
      t.string :open_time
      t.integer :spot_id
      t.string :url
      t.string :email
      t.string :tel
      t.string :organizer

      t.timestamps null: false
    end

    add_index :data_events, :category_id
    add_index :data_events, :user_id
    add_index :data_events, :area_id
    add_index :data_events, :spot_id
    add_index :data_events, :name
    add_index :data_events, :start_on
    add_index :data_events, :end_on
  end
end
