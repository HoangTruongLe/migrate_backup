class CreateTravelagents < ActiveRecord::Migration
  def change
    create_table :travelagents do |t|
      t.integer :area_id
      t.string  :name
      t.string  :en_name
      t.string  :url
      t.text    :description
      t.attachment :logo

      t.timestamps null: false
    end

    add_index :travelagents, :area_id
  end
end
