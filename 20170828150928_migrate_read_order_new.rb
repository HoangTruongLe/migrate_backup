class MigrateReadOrderNew < ActiveRecord::Migration
  def up
    # ReadMessage.where(read_target: 'Order#new').update_all(read_target: 'Order#receive_new')
  end
end
