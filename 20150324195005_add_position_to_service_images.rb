class AddPositionToServiceImages < ActiveRecord::Migration
  def change
    add_column :service_images, :position, :integer, null: false, default: 1
    add_index :service_images, :position
  end
end
