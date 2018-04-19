class AddColumnCautionableTypeToYellowCards < ActiveRecord::Migration
  def change
    add_column :yellow_cards, :cautionable_type, :string, null: false, default: :message
    add_index :yellow_cards, :cautionable_type
  end
end
