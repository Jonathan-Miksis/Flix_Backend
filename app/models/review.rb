class Review < ApplicationRecord
  belongs_to :user
  belongs_to :medium
  has_many :comments
end
