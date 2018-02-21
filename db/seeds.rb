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
restaurant_attributes = [
  {
    name: 'La Banquise',
    address: '123 Poutine Ave., Montreal',
    description: 'heaven on earth',
    stars: 5
  },
  {
    name: 'Soupe Soupe',
    address: '5331 Casgrain Ave',
    description: 'overpriced but tasty',
    stars: 4
  }
]
Restaurant.create!(restaurant_attributes)
puts 'Finished!'
