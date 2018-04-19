class ChangeEngineOfTables < ActiveRecord::Migration[5.0]
  def change
    ActiveRecord::Base.connection.tables.each do |table|
      ActiveRecord::Base.connection.execute("ALTER TABLE #{table} ENGINE=InnoDB;")
    end
  end
end
