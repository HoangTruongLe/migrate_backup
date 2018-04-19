class CreateAreaGuideEditors < ActiveRecord::Migration
  def change
    create_table :area_guide_editors do |t|
      t.integer :user_id, null: false
      t.integer :guide_id, null: false

      t.timestamps null: false
    end

    add_index :area_guide_editors, :user_id
    add_index :area_guide_editors, :guide_id
    add_index :area_guide_editors, %i[user_id guide_id], unique: true
  end
end
