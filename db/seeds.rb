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
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 12345 , category: "chinese"}
burgers = {name: "Burgers", address: "8 Boundary St, London E2 7JE", phone_number: 46373 , category: "italian"}
pizza = {name: "Pizza", address: "9 Boundary St, London E2 7JE", phone_number: 83843 , category: "japanese"}
sushi = {name: "Sushi", address: "10 Boundary St, London E2 7JE", phone_number: 38297 , category: "french"}
subway = {name: "Subway", address: "11 Boundary St, London E2 7JE", phone_number: 98765 , category: "belgian"}

[dishoom, burgers, pizza, sushi, subway].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
