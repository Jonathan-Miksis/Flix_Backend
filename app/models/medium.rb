class Medium < ApplicationRecord
  has_many :users, through: :watchlist
  has_many :reviews
end
