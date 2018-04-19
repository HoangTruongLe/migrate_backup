class MigrateReadTarget < ActiveRecord::Migration
  def up
    # ReadMessage.where(read_target: :review).find_each do |r|
    #   r.update(read_message_id: r.reference.review.id) if r.reference.review.present?
    # end
    # ReadMessage.where('read_order_id is not null').where(read_message_id: 0).update_all(
    #   'read_message_id = read_order_id'
    # )
    #
    # ReadMessage.where(read_target: 'request').update_all(read_target: 'Order#new')
    # ReadMessage.where(read_target: 'board_topic').update_all(read_target: 'Board::Topic#new')
    # ReadMessage.where(read_target: 'board_comment').update_all(read_target: 'Board::Comment#new')
    # ReadMessage.where(read_target: 'question').update_all(read_target: 'Question#new')
    # ReadMessage.where(read_target: 'question_answer').update_all(read_target: 'Answer#new')
    # ReadMessage.where(read_target: 'question_review').update_all(read_target: 'AnswerReview#new')
    # ReadMessage.where(read_target: 'news_article').update_all(read_target: 'News::Article#new')
    # ReadMessage.where(read_target: 'order_edit').update_all(read_target: 'Order#edit')
    # ReadMessage.where(read_target: 'order_finish').update_all(read_target: 'Order#finish')
    # ReadMessage.where(read_target: 'order_message').update_all(read_target: 'Order#message')
    # ReadMessage.where(read_target: 'order_cancel').update_all(read_target: 'Order#cancel')
    # ReadMessage.where(read_target: 'receive_message').update_all(read_target: 'Order#receive_message')
    # ReadMessage.where(read_target: 'receive_cancel').update_all(read_target: 'Order#receive_cancel')
    # ReadMessage.where(read_target: 'receive_payment').update_all(read_target: 'Order#receive_payment')
    # ReadMessage.where(read_target: 'review').update_all(read_target: 'Review#new')
    # ReadMessage.where(read_target: 'suspend_user').update_all(read_target: 'User#suspend')
    # ReadMessage.where(read_target: 'release').update_all(read_target: 'User#release')
    #
    # ReadMessage.where(read_target: 'message').delete_all
    # ReadMessage.where(read_target: 'receive').delete_all
    # ReadMessage.where(read_target: 'order_add').delete_all
    # ReadMessage.where(read_target: 'order_addition').delete_all
    # ReadMessage.where(read_target: 'order_decision').delete_all
    # ReadMessage.where(read_target: 'order_service_date').delete_all
  end
end
