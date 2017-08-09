# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
# Restaurant.destroy_all

# puts 'Creating restaurants...'

# 5.times do
#   Restaurant.create!(
#     name: Faker::Simpsons.location,
#     address: Faker::Address.street_address,
#     phone_number: Faker::PhoneNumber.phone_number,
#     category: ["chinese", "italian", "japanese", "french", "belgian"].sample
#   )
# end

30.times do
  Review.create!(
    content: Faker::HarryPotter.quote,
    rating: [4,5].sample,
    restaurant_id: [33, 34, 35, 36].sample
  )
end
puts 'Finished!'
