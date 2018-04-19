class AddAgreeToAbandonToResigns < ActiveRecord::Migration
  def change
    add_column :resigns, :agree_to_abandon, :boolean, null: false, default: false
  end
end
