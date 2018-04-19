class AddImageToReviews < ActiveRecord::Migration
  def change
    add_attachment :wp_reviews, :image
  end
end
