class CreateResigns < ActiveRecord::Migration
  def change
    create_table :resigns do |t|
      t.integer :user_id, null: false
      t.integer :reason_id, null: false
      t.text :message, null: false

      t.timestamps null: false
    end

    add_index :resigns, :reason_id
  end
end
