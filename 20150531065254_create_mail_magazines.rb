class CreateMailMagazines < ActiveRecord::Migration
  def change
    create_table :mail_magazines do |t|
      t.string :subject, null: false
      t.text :content, null: false
      t.text :emails, null: false
      t.datetime :send_at
      t.integer :number_of_emails, null: false, default: 0

      t.timestamps null: false
    end
  end
end
