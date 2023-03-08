# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
bandana = {name: "Bandana", address: "Calle 24, Rome", category: "italian"}
bondono = {name: "Bondono", address: "Calle 12, Tokyo", category: "japanese"}
bundunu = {name: "Bundunu", address: "Calle 4, Beijing", category: "chinese"}
bindini = {name: "Bindini", address: "Calle 8, Brugge", category: "belgian"}
bendene = {name: "Bendene", address: "Calle 41, Bordeaux", category: "french"}

[bandana, bondono, bundunu, bindini, bendene].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
