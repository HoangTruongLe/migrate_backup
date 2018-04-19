class CreateUserInterviews < ActiveRecord::Migration
  def change
    create_table :user_interviews do |t|
      t.integer :user_id
      t.text :hobby
      t.text :ability
      t.text :movie
      t.text :book
      t.text :music
      t.text :sports
      t.text :lived
      t.text :childhood
      t.text :appeal
      t.text :message

      t.timestamps null: false
    end

    add_index :user_interviews, :user_id, unique: true
  end
end
