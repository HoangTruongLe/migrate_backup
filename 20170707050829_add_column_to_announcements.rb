class AddColumnToAnnouncements < ActiveRecord::Migration
  def change
    add_column :announcements, :category, :integer, null: false, default: 1
  end
end
