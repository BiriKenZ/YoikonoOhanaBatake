class Flower < ApplicationRecord
  has_many :todos, foreign_key: :todo_id
end
