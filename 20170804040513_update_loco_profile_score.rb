class UpdateLocoProfileScore < ActiveRecord::Migration
  def change
    LocoProfile.find_each{ |profile| profile.send('calculate_score') }
  end
end
