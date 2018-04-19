class CreateAffiliates < ActiveRecord::Migration
  def change
    create_table :affiliates do |t|
      t.string :client, null: false
      t.string :url, null: false
      t.string :tel
      t.string :email, null: false
      t.string :key, null: false
      t.text :memo

      t.timestamps null: false
    end

    add_index :affiliates, :key, unique: true
  end
end
