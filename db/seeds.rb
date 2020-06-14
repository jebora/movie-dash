# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movies = [
  { 'title' => 'Joker', 'genre' => 'Crime, Drama, Thriller', 'year' => '2019', 'rating' => 8.5 },
  { 'title' => 'Fight Club', 'genre' => 'Drama', 'year' => '1999', 'rating' => 8.8 }
]

movies.each do |movie|
  Movie.create(
    title: movie['title'],
    genre: movie['genre'],
    year: movie['year'],
    rating: movie['rating']
  )
end
