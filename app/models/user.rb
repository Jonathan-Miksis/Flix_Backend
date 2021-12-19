class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :reviews, through: :watchlists
  has_many :watchlists
  has_many :comments
end
