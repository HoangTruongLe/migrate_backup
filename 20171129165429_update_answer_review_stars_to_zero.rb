class UpdateAnswerReviewStarsToZero < ActiveRecord::Migration
  def change
    # AnswerReview.where(stars: nil).find_each{ |ar| ar.update(stars: 0) }
    # change_column_null(:wp_answer_reviews, :stars, from: true, to: false)
    # change_column_default(:wp_answer_reviews, :stars, from: nil, to: 0)
  end
end
