class ReviewSerializer < ActiveModel::Serializer
  attributes :user, :title, :flix_rating, :post, :medium
end
