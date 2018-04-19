class CreateLocoProfiles < ActiveRecord::Migration
  def change
    create_table :loco_profiles do |t|
      t.integer :user_id, null: false
      t.integer :service_area_id, null: false
      t.text :description
      t.string :city
      t.string :job
      t.string :special
      t.string :howlonglive
      t.integer :bloodtype
      t.text :service_date

      t.timestamps null: false
    end

    add_index :loco_profiles, :user_id, unique: true
    add_index :loco_profiles, :service_area_id
  end
end
