class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name, null: false

      t.timestamps null: false
    end

    Language.create(name: '英語')
    Language.create(name: 'ドイツ語')
    Language.create(name: 'フランス語')
    Language.create(name: 'スペイン語')
    Language.create(name: 'イタリア語')
    Language.create(name: 'ポルトガル語')
    Language.create(name: 'オランダ語')
    Language.create(name: '韓国語')
    Language.create(name: '中国語(北京語)')
    Language.create(name: '中国語(広東語)')
    Language.create(name: 'インドネシア語')
    Language.create(name: 'タイ語')
  end
end
