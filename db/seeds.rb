require 'faker'
puts 'Creating 5 fake restaurants...'
5.times do
  restaurant = Restaurant.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number:  Faker::PhoneNumber.phone_number_with_country_code,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  restaurant.save!
end
puts 'Finished!'
