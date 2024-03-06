# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

# db/seeds.rb

# Create 5 restaurants
restaurants = [
  { name: "Delicious Chinese", address: "123 Main St", phone_number: "123-456-7890", category: "chinese" },
  { name: "Italiano's Trattoria", address: "456 Elm St", phone_number: "987-654-3210", category: "italian" },
  { name: "Sushi Master", address: "789 Oak St", phone_number: "456-789-0123", category: "japanese" },
  { name: "Cafe de Paris", address: "321 Pine St", phone_number: "789-012-3456", category: "french" },
  { name: "Belgian Bistro", address: "654 Maple St", phone_number: "012-345-6789", category: "belgian" }
]

# Loop through the restaurants array and create records in the database
restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end

puts "Seed data has been created successfully."
