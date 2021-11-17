# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Costume.destroy_all
User.destroy_all

user_1 = User.create!(first_name: "Emily", last_name: "Millard", email: "em@test.com", password: "password123")
user_2 = User.create!(first_name: "Bob", last_name: "Chester", email: "bc@test.com", password: "password321" )

costume_1 = Costume.create!(
  name: 'Pirate',
  description: 'Pirate costume with trouser, top and accessories',
  size: 'medium',
  location: 'Gracia',
  category: 'Kids',
  color: 'multi',
  price: 10,
  occasion: 'Halloween',
  condition: 'used',
  user: user_1
)
costume_2 = Costume.create!(
  name: 'Ballgown',
  description: '80s pink ballgown',
  size: 'small',
  location: 'El Born',
  category: 'Women',
  color: 'pink',
  price: 15,
  occasion: 'fancy dress',
  condition: 'worn',
  user: user_2
)

booking_1 = Booking.create!(
  start_date: Date.today,
  end_date: Date.today + 5,
  user: user_1,
  status: 0,
  costume: costume_2
)

puts "total users: #{User.count}"
puts "total Costumes: #{Costume.count}"
puts "total bookings: #{Booking.count}"
