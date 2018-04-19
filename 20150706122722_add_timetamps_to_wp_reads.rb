class AddTimetampsToWpReads < ActiveRecord::Migration
  def change
    if ActiveRecord::Base.connection.table_exists? :wp_reads
      # drop_table :wp_reads
    end
    create_table :wp_reads do |t|
      t.datetime :read_modified
      t.timestamps
    end
    # add_column :wp_reads, :created_at, :datetime
    # add_column :wp_reads, :updated_at, :datetime

    ReadMessage.update_all('created_at = read_modified, updated_at = read_modified')
  end
end
