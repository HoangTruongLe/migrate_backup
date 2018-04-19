class AddVotedIdToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :voted_id, :integer
    Vote.find_each do |vote|
      vote.update(voted_id: vote.parent.user.id)
    end
    change_column_null :votes, :user_id, true
    change_column_null :votes, :votable_type, true
    change_column_null :votes, :votable_id, true
    change_column_null :votes, :voted_id, true

    add_index :votes, :votable_type
    add_index :votes, :voted_id
  end
end
