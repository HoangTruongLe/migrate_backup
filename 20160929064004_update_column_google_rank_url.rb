class UpdateColumnGoogleRankUrl < ActiveRecord::Migration
  def change
    change_column :google_ranks, :uri, :text
  end
end
