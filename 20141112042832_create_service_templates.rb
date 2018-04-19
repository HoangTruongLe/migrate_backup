class CreateServiceTemplates < ActiveRecord::Migration
  def change
    create_table :service_templates do |t|
      t.string :name, null: false
      t.integer :service_category_id, null: false
      t.text :description, null: false

      t.timestamps
    end

    add_index :service_templates, :service_category_id
  end
end
