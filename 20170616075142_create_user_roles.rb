class CreateUserRoles < ActiveRecord::Migration
  def change
    # create_table :user_roles do |t|
    #   t.integer :user_id
    #   t.integer :admin_role
    #
    #   t.timestamps null: false
    # end
    #
    # User.where(user_level: 8).find_each do |user|
    #   user.update_columns(user_level: 0)
    #   user.create_role(admin_role: :admin)
    # end
    # User.where(user_level: 9).find_each do |user|
    #   user.update_columns(user_level: 2)
    #   user.create_role(admin_role: :admin)
    # end
    # User.where(user_level: 10).find_each do |user|
    #   user.update_columns(user_level: 0)
    #   user.create_role(admin_role: :system_admin)
    # end
  end
end
