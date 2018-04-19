class AddCounterCacheColumnsToAreas < ActiveRecord::Migration
  def change
    add_column :areas, :services_count, :integer, default: 0, null: false
    add_column :areas, :recommends_count, :integer, default: 0, null: false

    reversible do |dir|
      dir.up { data }
    end
  end

  def data
    execute <<-SQL.squish
      UPDATE areas
        SET services_count = (SELECT count(1)
                                FROM services
                                WHERE services.area_id = areas.id),
            recommends_count = (SELECT count(1)
                                      FROM user_recommends
                                      WHERE user_recommends.area_id = areas.id)
    SQL
  end
end
