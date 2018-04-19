class AddNotifiedAtToQuestions < ActiveRecord::Migration
  def change
    add_column :wp_questions, :notified_at, :datetime
    Question.update_all('notified_at = created_at')
  end
end
