class CreateInterviewImages < ActiveRecord::Migration
  def change
    create_table :interview_images do |t|
      t.integer :interview_id, null: false
      t.integer :position, null: false, default: 0
      t.attachment :image

      t.timestamps null: false
    end

    add_index :interview_images, :interview_id
  end
end
