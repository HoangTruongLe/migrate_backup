class AddExpireDateToQuestion < ActiveRecord::Migration
  def change
    add_column :wp_questions, :expires_at, :datetime
    add_index :wp_questions, :expires_at
  end
end
