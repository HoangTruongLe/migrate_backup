class AddFirstPublishedAtToServices < ActiveRecord::Migration
  def change
    add_column :services, :first_published_at, :datetime, null: true
    Service.where.not(published_at: nil).find_each { |s| s.update(first_published_at: s.published_at) }
  end
end
