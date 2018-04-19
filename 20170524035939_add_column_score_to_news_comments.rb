class AddColumnScoreToNewsComments < ActiveRecord::Migration
  def change
    add_column :news_comments, :score, :integer, default: 0, null: false
    add_index :news_comments, :score
  end
end
