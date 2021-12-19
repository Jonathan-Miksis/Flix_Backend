class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :reviews, through: :watchlist
  has_many :comments
end
