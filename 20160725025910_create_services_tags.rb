class CreateServicesTags < ActiveRecord::Migration
  def change
    create_table :services_tags do |t|
      t.integer :service_id, null: false
      t.integer :tag_id, null: false

      t.timestamps null: false
    end
    add_index :services_tags, :service_id
    add_index :services_tags, :tag_id
    add_index :services_tags, %i[service_id tag_id], unique: true
  end
end
