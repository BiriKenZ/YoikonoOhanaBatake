class Todo < ApplicationRecord
  belongs_to :user
  belongs_to :flower

  #　TODO: 後で実装する
  # validates :title, presence: true, length: { maximum: 255 }
end
