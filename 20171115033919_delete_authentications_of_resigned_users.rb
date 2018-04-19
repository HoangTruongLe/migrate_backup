class DeleteAuthenticationsOfResignedUsers < ActiveRecord::Migration
  def change
    User.unscoped.where(resigned: true).find_each { |resigned_user| resigned_user.authentications.destroy_all }
  end
end
