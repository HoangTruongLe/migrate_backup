class AddColumnKanaToAreas < ActiveRecord::Migration
  def change
    add_column :areas, :kana, :string
    add_column :countries, :kana, :string

    Area.find_each{ |a| a.update_columns(kana: a.name) if a.name.match?(/\A[\p{katakana}ー－]+\z/) }
    Country.find_each{ |a| a.update_columns(kana: a.name) if a.name.match?(/\A[\p{katakana}ー－]+\z/) }

    add_index :areas, :kana
    add_index :countries, :kana
  end
end
