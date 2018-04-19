class CreateServiceImages < ActiveRecord::Migration
  def change
    create_table :service_images do |t|
      t.integer :service_id, null: false
      t.string :title
      t.attachment :image

      t.timestamps
    end

    add_index :service_images, :service_id
  end
end
