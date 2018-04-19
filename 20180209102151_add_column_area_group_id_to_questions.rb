class AddColumnAreaGroupIdToQuestions < ActiveRecord::Migration
  def change
    add_column :wp_questions, :area_group_id, :integer
  end
end
