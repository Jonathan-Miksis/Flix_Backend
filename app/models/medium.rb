class Medium < ApplicationRecord
  has_many :users, through: :watchlists
  has_many :watchlists
  has_many :reviews
end
