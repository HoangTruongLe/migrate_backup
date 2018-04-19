class ChangeColumnNullSomeColumns < ActiveRecord::Migration[5.0]
  def change
    change_column_null :affiliate_items, :affiliate_id, false
    change_column_null :page_quotes, :url, true
    change_column_null :services, :area_id, false
  end
end
