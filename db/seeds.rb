# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Costume.destroy_all
User.destroy_all

puts "destroying database..."
puts "creating database ... "


  @user_1 = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password"
  )

  @user_2 = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password"
  )

  @user_3 = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password"
  )

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
  user: @user_1
)
costume_2 = Costume.create!(
  name: 'polar bear',
  description: 'realistic polar bear onesie',
  size: 'large',
  location: 'El Born',
  category: 'men',
  color: 'white',
  price: 25,
  occasion: 'animals',
  condition: 'worn',
  user: @user_2
)

costume_3 = Costume.create!(
  name: 'cowboy',
  description: 'cowboy scarf, hat and boots',
  size: 'small',
  location: 'gracia',
  category: 'pets',
  color: 'yellow/red',
  price: 15,
  occasion: 'birthday',
  condition: 'new',
  user: @user_3
)

costume_4 = Costume.create!(
  name: 'superhero',
  description: 'superman costume with tights, underwear and cape',
  size: 'large',
  location: 'Sants',
  category: 'men',
  color: 'blue',
  price: 35,
  occasion: 'party',
  condition: 'new',
  user: @user_1
)
costume_5 = Costume.create!(
  name: 'bride',
  description: 'vintage wedding dress with veil',
  size: 'medium',
  location: 'Poble Sec ',
  category: 'women',
  color: 'white',
  price: 50,
  occasion: 'carnival',
  condition: 'some damage',
  user: @user_2
)
costume_6 = Costume.create!(
  name: 'barbie',
  description: 'pink top, hot pants, heels and handbag',
  size: 'small',
  location: 'raval',
  category: 'women',
  color: 'pink',
  price: 5,
  occasion: 'party',
  condition: 'worn',
  user: @user_3
)
costume_7 = Costume.create!(
  name: 'prisoner',
  description: 'orange boiler suit and shackles',
  size: 'extra large',
  location: 'gotico',
  category: 'men',
  color: 'orange',
  price: 15,
  occasion: 'halloween',
  condition: 'worn',
  user: @user_1
)
costume_8 = Costume.create!(
  name: 'knight',
  description: 'helmet and chainmail, comes with sword',
  size: 'small',
  location: 'Poble Nou',
  category: 'kids',
  color: 'silver',
  price: 10,
  occasion: 'carnival',
  condition: 'good condition',
  user: @user_2
)
costume_9 = Costume.create!(
  name: 'monster',
  description: 'frankenstein monster',
  size: 'small',
  location: 'Hostafrancs',
  category: 'pets',
  color: 'white',
  price: 13,
  occasion: 'halloween',
  condition: 'new',
  user: @user_3
)
costume_10 = Costume.create!(
  name: 'fish',
  description: 'nemo costume with fish hat',
  size: 'extra large',
  location: 'Eixample',
  category: 'men',
  color: 'orange',
  price: 16,
  occasion: 'carnival',
  condition: 'new',
  user: @user_1
)
costume_11 = Costume.create!(
  name: 'mermaid',
  description: 'the little mermaid costume with tiara',
  size: 'small',
  location: 'Eixample',
  category: 'kids',
  color: 'green',
  price: 12,
  occasion: 'birthday',
  condition: 'worn',
  user: @user_2
)
costume_12 = Costume.create!(
  name: 'elf',
  description: 'christmas elf outfit with hat and shoes',
  size: 'large',
  location: 'El Born',
  category: 'men',
  color: 'green',
  price: 25,
  occasion: 'christmas',
  condition: 'new',
  user: @user_3
)

booking_1 = Booking.create!(
  start_date: Date.today,
  end_date: Date.today + 5,
  user: @user_1,
  status: 0,
  costume: costume_12
)

puts "total users: #{User.count}"
puts "total Costumes: #{Costume.count}"
puts "total bookings: #{Booking.count}"
