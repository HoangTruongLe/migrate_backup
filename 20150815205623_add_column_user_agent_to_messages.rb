class AddColumnUserAgentToMessages < ActiveRecord::Migration
  def change
    add_column :wp_messages, :user_agent, :string
  end
end
