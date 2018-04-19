class AddColumnPostContentToAnswers < ActiveRecord::Migration
  def change
    if ActiveRecord::Base.connection.table_exists? :wp_answers
      # drop_table :wp_answers
    end
    create_table :wp_answers do |t|
      # t.integer :user_registered
      t.timestamps
    end
    add_column :wp_answers, :post_content, :text
  end
end
