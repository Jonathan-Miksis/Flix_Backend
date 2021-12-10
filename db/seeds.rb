# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'

# movies_call = RestClient.get "https://imdb-api.com/en/API/Top250Movies/#{Rails.application.credentials.imdb_api_key}"
# media_array = JSON.parse(movies_call)["items"]
# media_array.each do |medium|
#   Medium.create(
#     imdb_id: medium["id"],
#     title: medium["title"],
#     year: medium["year"],
#     director: medium["crew"],
#     cast: medium["crew"],
#     # genre: medium[""],
#     # synopsis: medium[""],
#     rating: medium["imDbRating"]
#   )
# end

# tv_call = RestClient.get "https://imdb-api.com/en/API/Top250TVs/#{Rails.application.credentials.imdb_api_key}"
# media_array = JSON.parse(tv_call)["items"]
# media_array.each do |medium|
#   Medium.create(
#     imdb_id: medium["id"],
#     title: medium["title"],
#     year: medium["year"],
#     director: medium["crew"],
#     cast: medium["crew"],
#     # genre: medium[""],
#     # synopsis: medium[""],
#     rating: medium["imDbRating"]
#   )
# end

media = Medium.all

media.each do |medium|
  binding.pry
  id = medium.imdb_id
  trailer_call = RestClient.get "https://imdb-api.com/en/API/Trailer/#{Rails.application.credentials.imdb_api_key}/#{id}"
  medium.update(
    trailer_url: medium["link"]
    )
end

