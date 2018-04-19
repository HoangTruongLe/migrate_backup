class AddColumnRedirectionToTags < ActiveRecord::Migration
  def change
    add_column :wp_tags, :redirection, :string
  end
end
