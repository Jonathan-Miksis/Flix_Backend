class MediumSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :director, :cast, :genre, :synopsis, :rating, :artwork_url, :trailer_url, :aggregate_flix_rating, :reviews
end
