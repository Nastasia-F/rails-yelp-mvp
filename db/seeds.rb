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
deux_fois_plus_de_piment = { name: 'Deux fois plus de piment', address: '7 rue de beaubourg, Paris 75002', phone_number: '01...', category: 'chinese' }
ober_mama = { name: 'Ober mama', address: '10 boulevard richard lenoir, Paris 75011', phone_number: '01...', category: 'italian' }
la_ravigote = { name: 'la ravigote', address: '150 rue menilmontant, Paris 75011', phone_number: '01...', category: 'french' }
la_frite = { name: 'la frite', address: '20 rue des pyrenné, Paris 75019', phone_number: '01...', category: 'belgian' }

[deux_fois_plus_de_piment, ober_mama, la_ravigote, la_frite].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
