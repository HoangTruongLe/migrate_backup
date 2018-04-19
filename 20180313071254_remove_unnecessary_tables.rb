class RemoveUnnecessaryTables < ActiveRecord::Migration[5.0]
  def change
    # rubocop:disable Rails/ReversibleMigration
    %i[
      wp_collabnotes
      wp_collaboration
      wp_collabrules
      wp_collabwriters
      wp_generalnotes
      wp_links_extrainfo
      wp_subscribe2
    ].each do |table|
      # drop_table table if ActiveRecord::Base.connection.table_exists? table
    end

    ActiveRecord::Base.connection.tables.each do |table|
      # drop_table table if table.start_with? '_bak_'
    end
    # rubocop:enable Rails/ReversibleMigration
  end
end
