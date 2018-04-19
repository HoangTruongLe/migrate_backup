class AddPositionToServiceTemplates < ActiveRecord::Migration
  def change
    add_column :service_templates, :position, :integer, null: false, default: 0
    add_index :service_templates, :position
  end
end
