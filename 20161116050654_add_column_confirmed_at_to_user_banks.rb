class AddColumnConfirmedAtToUserBanks < ActiveRecord::Migration
  def change
    add_column :user_banks, :confirmed_at, :datetime
  end
end
