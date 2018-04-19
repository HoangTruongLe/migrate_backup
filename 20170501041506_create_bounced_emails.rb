class CreateBouncedEmails < ActiveRecord::Migration
  def change
    create_table :bounced_emails do |t|
      t.string :email, null: false

      t.timestamps null: false
    end

    add_index :bounced_emails, :email
  end
end
