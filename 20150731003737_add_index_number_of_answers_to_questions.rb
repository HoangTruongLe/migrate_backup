class AddIndexNumberOfAnswersToQuestions < ActiveRecord::Migration
  def change
    add_column :wp_questions, :number_of_answers, :integer
    add_index :wp_questions, :number_of_answers
  end
end
