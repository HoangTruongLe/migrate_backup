class CreateWidgetReferrers < ActiveRecord::Migration
  def change
    create_table :widget_referrers do |t|
      t.integer :user_id, null: false
      t.string :widget_type, null: false
      t.string :referrer, null: false
      t.integer :number_of_accesses, null: false

      t.timestamps null: false
    end
  end
end
