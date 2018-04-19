class CreateQuestionFollows < ActiveRecord::Migration
  def change
    # create_table :question_follows do |t|
    #   t.integer :user_id
    #   t.integer :question_id
    #
    #   t.timestamps null: false
    # end

    # add_column :wp_questions, :question_id, :integer
    # add_index :question_follows, :user_id
    # add_index :question_follows, :question_id
    # add_index :question_follows, %i[user_id question_id], unique: true

    Question.find_each do |question|
      question.user.following_questions << question if question.user.present?
    end
  end
end
