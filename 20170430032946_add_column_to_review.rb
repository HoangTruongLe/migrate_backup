class AddColumnToReview < ActiveRecord::Migration
  def change
    add_column :wp_reviews, :order_content, :text
  end
end
