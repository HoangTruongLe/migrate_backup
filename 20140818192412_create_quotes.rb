class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.integer :curation_id, null: false
      t.integer :position, null: false, default: 0
      t.string :title, null: false
      t.string :url, null: false
      t.string :image_remote_url, length: 2000
      t.string :site_name, null: false
      t.text :description
      t.text :comment

      t.timestamps
    end

    add_attachment :quotes, :image
    add_index :quotes, :curation_id
    add_index :quotes, :position
  end
end
