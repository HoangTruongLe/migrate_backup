class AddColumnStarsToReviews < ActiveRecord::Migration
  def change
    if ActiveRecord::Base.connection.table_exists? :wp_reviews
      # drop_table :wp_reviews
    end
    create_table :wp_reviews do |t|
      # t.integer :user_registered
      t.timestamps
    end
    add_column :wp_reviews, :rate, :integer
    add_column :wp_reviews, :nice_comment, :text
    add_column :wp_reviews, :improve_comment, :text
  end
end
