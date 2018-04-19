class ModifyLengthUrlGoogleRanks < ActiveRecord::Migration
  def change
    change_column :google_ranks, :uri, :string, limit: 1000
  end
end
