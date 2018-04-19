class AddColumnTelToAreaGuides < ActiveRecord::Migration
  def change
    add_column :area_guides, :tel, :text
    add_column :area_guides, :access, :text
    add_column :area_guides, :transit, :text
  end
end
