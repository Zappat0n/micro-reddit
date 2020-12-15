class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :username, :password, presence: true
  validates :username, uniqueness: {message: 'An account associated with %{value} already exists'}
  validates :password, length: {in: 4..12}
end
