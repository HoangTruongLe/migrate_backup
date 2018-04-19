class AddColumnHiddenByToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :delete_by_sender, :boolean, null: false, default: false
    add_column :messages, :delete_by_receiver, :boolean, null: false, default: false
  end
end
