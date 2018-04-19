class AddScoreToAnswers < ActiveRecord::Migration
  def change
    add_column :wp_answers, :score, :integer, null: false, default: 0
    add_index :wp_answers, :score
  end
end
