class DropAccountingBalances < ActiveRecord::Migration[5.0]
  def change
    # rubocop:disable Rails/ReversibleMigration
    # drop_table :accounting_balances if ActiveRecord::Base.connection.table_exists? :accounting_balances
    # rubocop:enable Rails/ReversibleMigration
  end
end
