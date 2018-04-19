class AddKindToAreaAccesses < ActiveRecord::Migration
  def change
    if ActiveRecord::Base.connection.table_exists? :wp_area_accesses
      drop_table :wp_area_accesses
    end
    create_table :wp_area_accesses do |t|
      # t.integer :user_registered
      t.timestamps
    end
    add_column :wp_area_accesses, :kind, :string
    add_column :wp_area_accesses, :area_id, :integer
    rename_column :wp_area_accesses, :area_id, :region_id

    add_index :wp_area_accesses, :kind
    add_index :wp_area_accesses, %i[kind region_id]

    AreaAccess.update_all(kind: 'Area')
  end
end
