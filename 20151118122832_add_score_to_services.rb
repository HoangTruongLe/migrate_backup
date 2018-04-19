class AddScoreToServices < ActiveRecord::Migration
  def change
    add_column :services, :score, :integer, null: false, default: 0
    Service.find_each{ |service| service.send(:update_score) }
  end
end
