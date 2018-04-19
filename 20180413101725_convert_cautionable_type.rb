class ConvertCautionableType < ActiveRecord::Migration[5.0]
  def change
    # rubocop:disable Rails/SkipsModelValidations
    YellowCard.where(cautionable_type: 'service::comment').update_all(cautionable_type: 'service/comment')
    # rubocop:enable Rails/SkipsModelValidations
  end
end
