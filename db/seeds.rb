# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

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
  size: 'M',
  location: 'Gracia',
  category: 'Kids',
  color: 'Black',
  price: 10,
  occasion: 'Halloween',
  condition: 'gently used',
  user: @user_1
)
file = URI.open('https://images.unsplash.com/photo-1600776960197-236ea07f003f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1887&q=80')
costume_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_2 = Costume.create!(
  name: 'polar bear',
  description: 'realistic polar bear onesie',
  size: 'L',
  location: 'El Born',
  category: 'men',
  color: 'white',
  price: 25,
  occasion: 'animals',
  condition: 'good condition',
  user: @user_2
)
file = URI.open('https://images.unsplash.com/photo-1589656966895-2f33e7653819?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1740&q=80')
costume_2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_3 = Costume.create!(
  name: 'cowboy',
  description: 'cowboy scarf, hat and boots',
  size: 'S',
  location: 'gracia',
  category: 'pets',
  color: 'yellow',
  price: 15,
  occasion: 'birthday',
  condition: 'very good condition',
  user: @user_3
)
file = URI.open('https://images.unsplash.com/photo-1623614706441-ccf126396bfa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1935&q=80')
costume_3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_4 = Costume.create!(
  name: 'superhero',
  description: 'superman costume with tights, underwear and cape',
  size: 'L',
  location: 'Sants',
  category: 'men',
  color: 'blue',
  price: 35,
  occasion: 'party',
  condition: 'perfect condition',
  user: @user_1
)
file = URI.open('https://images.unsplash.com/photo-1553976468-dcd9082bcd28?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1965&q=80')
costume_4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_5 = Costume.create!(
  name: 'bride',
  description: 'vintage wedding dress with veil',
  size: 'M',
  location: 'Poble Sec ',
  category: 'women',
  color: 'white',
  price: 50,
  occasion: 'carnival',
  condition: 'very used',
  user: @user_2
)
file = URI.open('https://images.unsplash.com/photo-1596541256991-c2f1ccddc6c4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1714&q=80')
costume_5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_6 = Costume.create!(
  name: 'barbie',
  description: 'top, hot pants, heels and handbag',
  size: 'small',
  location: 'raval',
  category: 'women',
  color: 'red',
  price: 5,
  occasion: 'party',
  condition: 'worn',
  user: @user_3
)
file = URI.open('https://images.unsplash.com/photo-1619010309157-c9755331a225?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
costume_6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_7 = Costume.create!(
  name: 'prisoner',
  description: 'orange boiler suit and shackles',
  size: 'XL',
  location: 'gotico',
  category: 'men',
  color: 'yellow',
  price: 15,
  occasion: 'halloween',
  condition: 'worn',
  user: @user_1
)
file = URI.open('https://images.unsplash.com/photo-1579186523804-b04c38349d2c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1770&q=80')
costume_7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_8 = Costume.create!(
  name: 'knight',
  description: 'helmet and chainmail, comes with sword',
  size: 'S',
  location: 'Poble Nou',
  category: 'kids',
  color: 'white',
  price: 10,
  occasion: 'carnival',
  condition: 'good condition',
  user: @user_2
)
file = URI.open('https://images.unsplash.com/photo-1532788995540-a403ca992bb2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1887&q=80')
costume_8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_9 = Costume.create!(
  name: 'monster',
  description: 'frankenstein monster',
  size: 'S',
  location: 'Hostafrancs',
  category: 'pets',
  color: 'white',
  price: 13,
  occasion: 'halloween',
  condition: 'gently used',
  user: @user_3
)
file = URI.open('https://images.unsplash.com/photo-1632889068719-53b1cbe39ab9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1965&q=80')
costume_9.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_10 = Costume.create!(
  name: 'fish',
  description: 'shark costume with fish hat',
  size: 'XL',
  location: 'Eixample',
  category: 'men',
  color: 'white',
  price: 16,
  occasion: 'carnival',
  condition: 'perfect condition',
  user: @user_1
)
file = URI.open('https://images.unsplash.com/photo-1572279696557-51fb559f67dc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1742&q=80')
costume_10.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_11 = Costume.create!(
  name: 'mermaid',
  description: 'the little mermaid costume with tiara',
  size: 'S',
  location: 'Eixample',
  category: 'kids',
  color: 'blue',
  price: 12,
  occasion: 'birthday',
  condition: 'very good condition',
  user: @user_2
)
file = URI.open('https://images.unsplash.com/photo-1624392423911-7837c8957a3c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1674&q=80')
costume_11.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_12 = Costume.create!(
  name: 'elf',
  description: 'christmas elf outfit with hat and shoes',
  size: 'L',
  location: 'El Born',
  category: 'pets',
  color: 'red',
  price: 25,
  occasion: 'christmas',
  condition: 'good condition',
  user: @user_3
)
file = URI.open('https://images.unsplash.com/photo-1583513702411-9dade5d3cb12?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=776&q=80')
costume_12.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


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
