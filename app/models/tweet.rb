class Tweet < ApplicationRecord
  validates :text, presence: true
  #バリテーション　空のデータは受け取らない処理
end
