class MigrateFacebookLogin < ActiveRecord::Migration
  def change
    User.find_each{ |u| Authentication.create(user_id: u.id, provider: :facebook, uid: u.meta(:facebook_id), access_token: u.meta(:facebook_access_token)) if u.meta(:facebook_id).present? }
  end
end
