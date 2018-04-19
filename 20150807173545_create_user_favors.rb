class CreateUserFavors < ActiveRecord::Migration
  def change
    create_table :user_favors do |t|
      t.integer :user_id, null: false
      t.integer :favorite_user_id, null: false

      t.timestamps null: false
    end

    add_index :user_favors, :user_id
    add_index :user_favors, :favorite_user_id
    add_index :user_favors, %i[user_id favorite_user_id], unique: true
  end
end
