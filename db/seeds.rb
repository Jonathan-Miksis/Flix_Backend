# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'


movies_call = RestClient.get "https://imdb-api.com/en/API/Top250Movies/#{Rails.application.credentials.imdb_api_key}"
media_array = JSON.parse(movies_call)["items"]
media_array.each do |medium|
  Medium.create(
    imdb_id: medium["id"],
    title: medium["title"],
    year: medium["year"],
    cast: medium["crew"],
    rating: medium["imDbRating"]
  )
end

tv_call = RestClient.get "https://imdb-api.com/en/API/Top250TVs/#{Rails.application.credentials.imdb_api_key}"
media_array = JSON.parse(tv_call)["items"]
media_array.each do |medium|
  Medium.create(
    imdb_id: medium["id"],
    title: medium["title"],
    year: medium["year"],
    cast: medium["crew"],
    rating: medium["imDbRating"]
  )
end

media = Medium.all

media.each do |medium|
  # binding.pry
  id = medium.imdb_id

  trailer_call = RestClient.get "https://imdb-api.com/en/API/Trailer/#{Rails.application.credentials.imdb_api_key}/#{id}"
  trailer_response = JSON.parse(trailer_call)

  full_cast_call = RestClient.get "https://imdb-api.com/en/API/FullCast/#{Rails.application.credentials.imdb_api_key}/#{id}"
  full_cast_response = JSON.parse(full_cast_call)

  pic_synopsis = RestClient.get "https://imdb-api.com/en/API/Title/#{Rails.application.credentials.imdb_api_key}/#{id}"
  pic_synopsis_response = JSON.parse(pic_synopsis)

  medium.update(
    trailer_url: trailer_response["link"],
    director: full_cast_response["directors"]["items"][0]["name"],
    synopsis: pic_synopsis_response["plot"],
    artwork_url: pic_synopsis_response["image"],
  )
end
