class CreateAreaGroupMembers < ActiveRecord::Migration
  def change
    create_table :area_group_members do |t|
      t.integer :area_group_id, null: false
      t.integer :area_id, null: false

      t.timestamps null: false
    end

    add_index :area_group_members, :area_group_id
    add_index :area_group_members, :area_id
    add_index :area_group_members, %i[area_group_id area_id], unique: true
  end
end
