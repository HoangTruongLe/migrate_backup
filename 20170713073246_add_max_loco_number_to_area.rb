class AddMaxLocoNumberToArea < ActiveRecord::Migration
  def change
    add_column :areas, :max_number_of_locos, :integer, null: false, default: 0
  end
end
