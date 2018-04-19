class CreateUserRecommends < ActiveRecord::Migration
  def change
    create_table :user_recommends do |t|
      t.integer :user_id, null: false
      t.string :category, null: false
      t.string :jname, null: false
      t.string :local_name
      t.text :comment
      t.integer :stars, null: false, default: 0
      t.attachment :image
      t.text :description

      t.timestamps null: false
    end

    add_index :user_recommends, :user_id
    add_index :user_recommends, :category
    add_index :user_recommends, %i[user_id category], unique: true
  end
end
