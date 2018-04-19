class ChangeValueInColumnVotableType < ActiveRecord::Migration
  def up
    Vote.where(votable_type: 'answer').update_all(votable_type: 'Answer')
  end

  def down
    Vote.where(votable_type: 'Answer').update_all(votable_type: 'answer')
  end
end
