class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '----- * ' },
    { id: 2, name: 'ギター' },
    { id: 3, name: 'ベース' },
    { id: 4, name: 'アンプ' },
    { id: 5, name: 'エフェクター' },
    { id: 6, name: 'ドラム' },
    { id: 7, name: 'キーボード' },
    { id: 8, name: 'PA機器' },
    { id: 9, name: 'アクセサリー' },
    { id: 10, name: 'ウクレレ' },
    { id: 11, name: 'サックス' },
    { id: 12, name: 'トランペット' },
    { id: 13, name: 'ヴァイオリン' },
    { id: 14, name: '弦楽器' },
    { id: 15, name: '管楽器' },
    { id: 16, name: 'DTM' },
    { id: 17, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :post
end
