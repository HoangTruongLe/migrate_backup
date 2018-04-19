class CreateServiceComments < ActiveRecord::Migration[5.0]
  def change
    create_table :service_comments do |t|
      t.integer :service_id
      t.integer :user_id
      t.integer :parent_id
      t.text :comment

      t.timestamps
    end

    add_index :service_comments, :service_id
    add_index :service_comments, :user_id
  end
end
