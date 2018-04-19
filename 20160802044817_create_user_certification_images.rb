class CreateUserCertificationImages < ActiveRecord::Migration
  def change
    create_table :user_certification_images do |t|
      t.integer :certification_id, null: false
      t.integer :position, null: false, default: 0
      t.attachment :image

      t.timestamps null: false
    end

    add_index :user_certification_images, :certification_id
  end
end
