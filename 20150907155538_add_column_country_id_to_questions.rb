class AddColumnCountryIdToQuestions < ActiveRecord::Migration
  def change
    add_column :wp_questions, :area_id, :integer
    change_column_null :wp_questions, :area_id, true
    add_column :wp_questions, :country_id, :integer
    add_index :wp_questions, :country_id
  end
end
