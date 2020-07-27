# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all 
Restaurant.destroy_all 
Wellness_Center.destroy_all 

5.times do 
User.create([
    { username: "NYC123",
      password: "NYC123",
      location: "brooklyn"
    }
])
end

50.times do
Restaurant.create([
    { name: Faker::Restaurant.name,
    bio: Faker::Restaurant.type,
    address: Faker::Address.street_address ,
    url: Faker::Internet.url,
    review: Faker::Restaurant.review ,
    avg_rating: 5
}])
end

50.times do
Wellness_center.create([
    { name: "Sun Studio" ,
    bio: "Namaste",
    address: Faker::Address.street_address ,
    url: Faker::Internet.url,
    review: "Amazing studio!",
    avg_rating: 4
}])
end
puts "done seeding"