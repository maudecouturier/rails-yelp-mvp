CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']

puts 'Creating 10 fake restaurants...'
10.times do
  restaurant = Restaurant.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    category: CATEGORIES.sample,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code
  )
  restaurant.save!
end
puts 'Finished!'
