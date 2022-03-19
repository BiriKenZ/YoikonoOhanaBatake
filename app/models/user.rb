class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :todos, dependent: :destroy

  validates :email, presence: true, length: { maximum: 255 }
  validates :name, length: { maximum: 50 }

  #TODO: nameがからの時、"no name"を表示するようにする""

end
