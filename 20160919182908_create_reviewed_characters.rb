class CreateReviewedCharacters < ActiveRecord::Migration
  def change
    create_table :reviewed_characters do |t|
      t.integer :review_id, null: false
      t.integer :character, null: false

      t.timestamps null: false
    end

    add_index :reviewed_characters, :review_id
    add_index :reviewed_characters, :character
    add_index :reviewed_characters, %i[review_id character], unique: true
  end
end
