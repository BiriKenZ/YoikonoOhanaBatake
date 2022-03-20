class Flower < ApplicationRecord
  has_many :todos, dependent: :destroy, foreign_key: :todo_id
end
