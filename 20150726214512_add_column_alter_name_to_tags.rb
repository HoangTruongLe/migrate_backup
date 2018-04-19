class AddColumnAlterNameToTags < ActiveRecord::Migration
  def change
    if ActiveRecord::Base.connection.table_exists? :wp_tags
      # drop_table :wp_tags
    end
    create_table :wp_tags do |t|
      # t.integer :user_registered
      t.timestamps
    end
    add_column :wp_tags, :alter_name, :string
  end
end
