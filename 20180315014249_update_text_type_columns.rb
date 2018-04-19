class UpdateTextTypeColumns < ActiveRecord::Migration[5.0]
  def change
    return if Rails.env.production?

    # change_column :admin_user_comments, :comment, :text
    # change_column :announcements, :content, :text
    # change_column :area_guides, :security, :text
    # change_column :area_guides, :climate, :text
    # change_column :area_guides, :best_season, :text
    # change_column :area_guides, :commodity_price, :text
    # change_column :area_guides, :budget, :text
    # change_column :area_guides, :holidays, :text
    # change_column :area_guides, :festivals, :text
    # change_column :area_guides, :tel, :text
    # change_column :area_guides, :access, :text
    # change_column :area_guides, :transit, :text
    # change_column :areas, :description, :text
    # change_column :areas_tags, :description, :text
    # change_column :board_categories, :description, :text
    # change_column :board_comments, :content, :text
    # change_column :board_topics, :content, :text
    # change_column :countries, :description, :text
    # change_column :curations, :content, :text
    # change_column :data_event_categories, :description, :text
    # change_column :data_events, :description, :text
    # change_column :data_events, :memo, :text
    # change_column :data_spots, :description, :text
    # change_column :data_spots, :access, :text
    # change_column :delayed_jobs, :handler, :text
    # change_column :delayed_jobs, :last_error, :text
    # change_column :faqs, :question, :text
    # change_column :faqs, :answer, :text
    # change_column :google_ranks, :uri, :text
    # change_column :interviews, :content, :text
    # change_column :local_data_spot_category_texts, :description, :text
    # change_column :loco_profiles, :description, :text
    # change_column :loco_profiles, :service_date, :text
    # change_column :loco_profiles, :quit_message, :text
    # change_column :mail_magazines, :content, :text
    # change_column :mail_magazines, :emails, :text
    # change_column :messages, :content, :text
    # change_column :order_categories, :loco_template, :text
    # change_column :order_categories, :user_template, :text
    # change_column :order_categories, :description, :text
    # change_column :orders, :admin_memo, :text
    # change_column :page_quotes, :quote1, :text
    # change_column :page_quotes, :quote2, :text
    # change_column :page_quotes, :quote3, :text
    # change_column :quotes, :description, :text
    # change_column :quotes, :comment, :text
    # change_column :resigns, :message, :text
    # change_column :service_categories, :description, :text
    # change_column :service_categories, :advise, :text
    # change_column :service_templates, :description, :text
    # change_column :services, :description, :text
    # change_column :travelagents, :description, :text
    # change_column :user_certifications, :memo, :text
    # change_column :user_interviews, :hobby, :text
    # change_column :user_interviews, :ability, :text
    # change_column :user_interviews, :movie, :text
    # change_column :user_interviews, :book, :text
    # change_column :user_interviews, :music, :text
    # change_column :user_interviews, :sports, :text
    # change_column :user_interviews, :lived, :text
    # change_column :user_interviews, :childhood, :text
    # change_column :user_interviews, :appeal, :text
    # change_column :user_interviews, :message, :text
    # change_column :user_recommends, :comment, :text
    # change_column :user_recommends, :description, :text
    # change_column :user_storages, :value, :text
    # if ActiveRecord::Base.connection.table_exists? :wp_answer_reviews
    #   drop_table :wp_answer_reviews
    # end
    # create_table :wp_answer_reviews do |t|
    #   # t.integer :user_registered
    #   t.timestamps
    # end
    # add_column :wp_answer_reviews, :content, :text
    # change_column :wp_answer_reviews, :content, :text
    # add_column :wp_answers, :content, :text
    # change_column :wp_answers, :content, :text
    # change_column :wp_answers, :post_content, :text
    # add_column :wp_questions, :content, :text
    # change_column :wp_questions, :content, :text
    add_column :wp_reviews, :message, :text
    change_column :wp_reviews, :message, :text
    change_column :wp_reviews, :nice_comment, :text
    change_column :wp_reviews, :improve_comment, :text
    change_column :wp_reviews, :order_content, :text
    change_column :wp_tags, :description, :text
    change_column :zones, :description, :text
  end
end
