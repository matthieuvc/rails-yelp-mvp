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
dishoom = { name: "Dishoom", address: "London", phone_number: 041, category: "chinese" }
pizza_east = { name: "Pizza East", address: "Paris", phone_number: 042, category: "japanese" }
pizza_north = { name: "Pizza North", address: "Stockholm", phone_number: 043, category: "french" }
pizza_south = { name: "Pizza South", address: "Rome", phone_number: 044, category: "italian" }
pizza_west = { name: "Pizza West", address: "Brussels", phone_number: 045, category: "belgian" }

[dishoom, pizza_east, pizza_north, pizza_south, pizza_west].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
