class UpdateUserTimezone < ActiveRecord::Migration
  def change
    User.where(timezone: '').update_all(timezone: nil)
  end
end
