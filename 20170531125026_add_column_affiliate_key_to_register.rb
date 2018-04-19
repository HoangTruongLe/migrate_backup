class AddColumnAffiliateKeyToRegister < ActiveRecord::Migration
  def change
    if ActiveRecord::Base.connection.table_exists? :wp_registers
      drop_table :wp_registers
    end
    create_table :wp_registers do |t|
      # t.integer :user_registered
      t.timestamps
    end
    add_column :wp_registers, :affiliate_id, :integer
    add_index :wp_registers, :affiliate_id
  end
end
