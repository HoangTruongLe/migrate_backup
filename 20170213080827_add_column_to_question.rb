class AddColumnToQuestion < ActiveRecord::Migration
  def change
    add_column :wp_questions, :redirection, :string
  end
end
