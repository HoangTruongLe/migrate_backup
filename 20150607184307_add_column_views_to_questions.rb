class AddColumnViewsToQuestions < ActiveRecord::Migration
  def change
    if ActiveRecord::Base.connection.table_exists? :wp_questions
      # drop_table :wp_questions
    end
    create_table :wp_questions do |t|
      # t.integer :user_registered
      t.timestamps
    end
    add_column :wp_questions, :views, :integer, null: false, default: 0
    add_index :wp_questions, :views
  end
end
