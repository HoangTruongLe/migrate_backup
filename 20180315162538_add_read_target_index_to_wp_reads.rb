class AddReadTargetIndexToWpReads < ActiveRecord::Migration[4.2][5.0]
  def up
    add_column :wp_reads, :read_target, :string, limit: 50
    change_column :wp_reads, :read_target, :string, limit: 50
    add_index :wp_reads, :read_target
  end

  def down
    remove_index :wp_reads, :read_target
    change_column :wp_reads, :read_target, :text
  end
end
