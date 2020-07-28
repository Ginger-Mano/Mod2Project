# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
RestaurantReservation.destroy_all
User.destroy_all 
Restaurant.destroy_all 
WellnessCenter.destroy_all 


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
WellnessCenter.create([
    { name: "Sun Studio" ,
    bio: "Namaste",
    address: Faker::Address.street_address ,
    url: Faker::Internet.url,
    review: "Amazing studio!",
    avg_rating: 4
}])
end

6.times do
    RestaurantReservation.create([
        {
            restaurant_name: Restaurant.first.name,
            party_size: 5,
            date: "November 3",
            time: "5:00",
            user_id: User.first.id,
            restaurant_id: Restaurant.first.id
        }
    ])
end
puts "done seeding"