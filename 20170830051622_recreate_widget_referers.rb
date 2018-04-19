class RecreateWidgetReferers < ActiveRecord::Migration
  def change
    create_table :widget_referers do |t|
      t.integer :user_id, null: false
      t.string :widget_type, null: false
      t.string :referer_url, limit: 576
      t.integer :number_of_accesses, null: false, default: 0

      t.timestamps null: false
    end
    add_index :widget_referers, :user_id
    add_index :widget_referers, :widget_type

    # drop_table :widget_referrers
  end
end
