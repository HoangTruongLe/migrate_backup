class CreateViolationReports < ActiveRecord::Migration
  def change
    create_table :violation_reports do |t|
      t.string :reportable_type, null: false
      t.integer :reportable_id, null: false
      t.integer :user_id, null: false
      t.integer :reporter_id, null: false

      t.timestamps null: false
    end

    add_index :violation_reports, :reportable_type
    add_index :violation_reports, :reportable_id
    add_index :violation_reports, :reporter_id
    add_index :violation_reports, :user_id
    add_index :violation_reports,
              %i[reporter_id reportable_type reportable_id],
              unique: true,
              name: 'violation_reports_unique_index'
  end
end
