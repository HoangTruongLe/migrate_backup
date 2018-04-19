class AddColumnAlterNameToArea < ActiveRecord::Migration
  def change
    add_column :areas, :alter_name, :string, length: 100
  end
end
