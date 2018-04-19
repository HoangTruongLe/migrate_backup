class AddColumnNicknameToUsers < ActiveRecord::Migration
  def change
    # add_column :wp_users, :user_nickname, :string
    add_column :wp_users, :resigned, :integer
    User.find_each do |user|
      user.update(user_nickname: user.meta(:nickname))
    end
  end
end
