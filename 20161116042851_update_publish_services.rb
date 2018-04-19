class UpdatePublishServices < ActiveRecord::Migration
  def change
    # Service.published.where('price < ?', 500).update_all(published_at: nil)
  end
end
