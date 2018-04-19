class CreateCurations < ActiveRecord::Migration
  def change
    create_table :curations do |t|
      t.string :title, null: false
      t.text :content
      t.integer :area_id
      t.integer :creator_id

      t.timestamps
    end

    add_index :curations, :creator_id
  end
end
