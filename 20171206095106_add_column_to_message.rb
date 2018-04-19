class AddColumnToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :kind, :integer, null: false, default: 0
    add_index :messages, :kind
  end
end
