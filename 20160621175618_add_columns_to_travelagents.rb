class AddColumnsToTravelagents < ActiveRecord::Migration
  def change
    add_column :travelagents, :local_name, :string
    add_column :travelagents, :tel, :string
    add_column :travelagents, :email, :string
    add_column :travelagents, :businesshours, :string
    add_column :travelagents, :japanese, :integer, null: false, default: 0
  end
end
