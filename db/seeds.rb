# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants = [
  {
    name: 'Epicure',
    address: '75008 Paris',
    category: 'french',
    phone_number: '01 01 01 01 01'
  },
  {
    name: 'La Palette',
    address: '75005 Paris',
    category: 'french',
    phone_number: '01 01 01 01 02'
  },
  {
    name: 'The Fat Duck',
    address: '75009 Paris',
    category: 'french',
    phone_number: '01 01 01 01 03'
  },
  {
    name: 'Le Petit Cambodge',
    address: '75010 Paris',
    category: 'japanese',
    phone_number: '01 01 01 01 04'
  },
  {
    name: 'Il Carpaccio',
    address: '75011 Paris',
    category: 'italian',
    phone_number: '01 01 01 01 05'
  }
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished!'
