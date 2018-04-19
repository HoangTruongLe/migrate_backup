class AddAddressToTravelagents < ActiveRecord::Migration
  def change
    add_column :travelagents, :address, :string
    add_column :travelagents, :published, :boolean, null: false, default: false
  end
end
