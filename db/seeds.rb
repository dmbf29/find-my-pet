puts "Cleaning the db..."
Pet.destroy_all

puts 'Creating 30 pets...'
30.times do
  Pet.create!(
    name: Faker::Games::SuperMario.character,
    address: Faker::Games::SuperMario.location,
    species: Pet::SPECIES.sample,
    found_on: Date.today - rand(1..10),
    status: Pet.statuses.keys.sample
  )
end
puts "...created #{Pet.count} pets"
