require 'faker'

puts 'Creating 10 fake flats...'
10.times do
  flat = Flat.new(
    name: Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: rand(25..100),
    number_of_guests: rand(1..5)
  )
  flat.save!
end
puts 'Finished!'
