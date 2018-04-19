class AddIndexScoreToServices < ActiveRecord::Migration
  def change
    add_index :services, :score
  end
end
