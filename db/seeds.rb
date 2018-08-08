# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Sushirito',
    address:      '101 Montgomery St, San Francisco CA',
    phone_number: 4155321234,
    category:     'japanese'
  },
  {
    name:         'Working Girls',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: 4155512343,
    category:     'french'
  },
  {
    name:         'El Farolito',
    address:      'One Montgomery, San Francisco CA',
    phone_number: 4154326200,
    category:     'italian'
  },
  {
    name:         'R&G',
    address:      '1 Tokyo Street, Tokyo, Japan',
    phone_number: 4154326222,
    category:     'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
