class CreateChooseLocoReasons < ActiveRecord::Migration
  def change
    create_table :choose_loco_reasons do |t|
      t.integer :order_id, null: false
      t.integer :reason_id, null: false

      t.timestamps null: false
    end

    add_index :choose_loco_reasons, %i[order_id reason_id], unique: true
  end
end
