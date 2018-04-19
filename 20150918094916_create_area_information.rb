class CreateAreaInformation < ActiveRecord::Migration
  def change
    create_table :area_information do |t|
      t.integer :area_id, null: false
      t.integer :kind, null: false, default: 0
      t.string :area_space
      t.string :population
      t.string :religion
      t.string :language
      t.string :currency

      t.timestamps null: false
    end

    add_index :area_information, :area_id
  end
end
