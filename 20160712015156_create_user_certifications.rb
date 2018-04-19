class CreateUserCertifications < ActiveRecord::Migration
  def change
    create_table :user_certifications do |t|
      t.integer :user_id, null: false
      t.string :provider, null: false
      t.string :provider_id
      t.datetime :certified_at
      t.integer :certified_by_id
      t.attachment :attachment
      t.text :memo

      t.timestamps null: false
    end

    add_index :user_certifications, :user_id
    add_index :user_certifications, :provider
  end
end
