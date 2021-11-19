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
  name: 'Spider-man',
  description: 'Spiderman costume is in good condition and very little used.',
  size: 'S',
  location: 'El Born',
  category: 'kids',
  color: 'red',
  price: 25,
  occasion: 'animals',
  condition: 'good condition',
  user: @user_2
)
file = URI.open('https://ae01.alicdn.com/kf/Ub60af05d491f4146892e97d4f4694e21b.jpg')
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
  name: 'Mexican hat',
  description: 'The best hat you can have I am selling it as it is a bit stained but still usable.',
  size: 'L',
  location: 'Sants',
  category: 'men',
  color: 'black',
  price: 20,
  occasion: 'party',
  condition: 'perfect condition',
  user: @user_1
)
file = URI.open('app/assets/images/haji.jpg')
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
  name: 'Dracula',
  description: 'top, hot pants, heels and handbag',
  size: 'small',
  location: 'Foneria',
  category: 'kids',
  color: 'red',
  price: 10,
  occasion: 'party',
  condition: 'worn',
  user: @user_3
)
file = URI.open('https://ae01.alicdn.com/kf/Udaf5782929f24384979d21ee3015ba98u.jpg')
costume_6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_7 = Costume.create!(
  name: 'Prisoner',
  description: 'black and white boiler and shackles',
  size: 'XL',
  location: 'Nou barris',
  category: 'men',
  color: 'yellow',
  price: 15,
  occasion: 'halloween',
  condition: 'worn',
  user: @user_1
)
file = URI.open('https://cdn.wallapop.com/images/10420/a2/c0/__/c10420p608581254/i1895035621.jpg?pictureSize=W640')
costume_7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_8 = Costume.create!(
  name: 'knight',
  description: 'helmet and chainmail, comes with sword',
  size: 'S',
  location: 'Ronda del Guinardó',
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
  name: 'Shark',
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
file = URI.open('https://cdn.wallapop.com/images/10420/bm/kq/__/c10420p703046656/i2249135445.jpg?pictureSize=W640')
costume_10.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_11 = Costume.create!(
  name: 'Mermaid',
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
file = URI.open('https://cdn.wallapop.com/images/10420/2a/m1/__/c10420p138757461/i358280026.jpg?pictureSize=W640')
costume_11.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_12 = Costume.create!(
  name: 'Christmas dog',
  description: 'Christmas dog outfit with hat',
  size: 'L',
  location: 'Maragall',
  category: 'pets',
  color: 'red',
  price: 10,
  occasion: 'christmas',
  condition: 'good condition',
  user: @user_3
)
file = URI.open('https://ae01.alicdn.com/kf/U57983ba7663f4e34bf296ee93c747c6a5.jpg')
costume_12.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_13 = Costume.create!(
  name: 'Cat costume',
  description: 'Christmas cat outfit heater',
  size: 'S',
  location: 'La Sagrera',
  category: 'pets',
  color: 'red',
  price: 5,
  occasion: 'christmas',
  condition: 'good condition',
  user: @user_3
)
file = URI.open('https://ae01.alicdn.com/kf/U286a4d903fd849c3bf3797d6053a6500i.jpg')
costume_13.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_14 = Costume.create!(
  name: 'Woman costume ',
  description: 'Christmas womans comfy green red outfit ',
  size: 'S',
  location: 'Rambla de Prim',
  category: 'woman',
  color: 'red',
  price: 20,
  occasion: 'christmas',
  condition: 'good condition',
  user: @user_3
)
file = URI.open('https://ae01.alicdn.com/kf/U8cd9acda0a644cbabfa76a4765340ff7u.jpg')
costume_14.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_15 = Costume.create!(
  name: 'Elf woman costume',
  description: 'Elf woman dress super comfortable ',
  size: 'L',
  location: 'Camp Nou',
  category: 'woman',
  color: 'red',
  price: 22,
  occasion: 'christmas',
  condition: 'good condition',
  user: @user_3
)
file = URI.open('https://ae01.alicdn.com/kf/U72d203e38cec44b8a3313190a2b93410V.jpg')
costume_15.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_16 = Costume.create!(
  name: 'Santa Claus',
  description: 'Santa Claus Costume with beard',
  size: 'XL',
  location: 'Plaza Catalunya',
  category: 'men',
  color: 'red',
  price: 30,
  occasion: 'christmas',
  condition: 'good condition',
  user: @user_3
)
file = URI.open('https://ae01.alicdn.com/kf/Uab2b0191fc344950ba418e8c7ac55164a.jpg')
costume_16.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_17 = Costume.create!(
  name: 'Girl costume',
  description: 'Christmas elf girl costume almost new',
  size: 'S',
  location: 'Zona Universitaria',
  category: 'children',
  color: 'red',
  price: 15,
  occasion: 'christmas',
  condition: 'good condition',
  user: @user_3
)
file = URI.open('https://ae01.alicdn.com/kf/Uf36ad33d98f64a62878c28266e3727b08.jpg')
costume_17.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_18 = Costume.create!(
  name: 'Christmas pyjamas',
  description: 'Super comfortable and warm adjustable christmas pyjamas',
  size: 'S',
  location: 'Avenida diagonal',
  category: 'woman',
  color: 'red',
  price: 40,
  occasion: 'christmas',
  condition: 'good condition',
  user: @user_3
)
file = URI.open('https://ae01.alicdn.com/kf/U14acb298bf0e4163868b5830f850e3a71.jpg')
costume_18.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_19 = Costume.create!(
  name: 'Magician king',
  description: 'Costume magician king costume for toddler ver comfortable',
  size: 'M',
  location: 'Drassanes',
  category: 'kids',
  color: 'yellow',
  price: 8,
  occasion: 'christmas',
  condition: 'good condition',
  user: @user_3
)
file = URI.open('https://cdn.wallapop.com/images/10420/7e/62/__/c10420p447060513/i1176331602.jpg?pictureSize=W640')
costume_19.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_20 = Costume.create!(
  name: 'cat noel',
  description: 'Santa Claus costume for cats ',
  size: 's',
  location: 'Lesseps',
  category: 'pets',
  color: 'red',
  price: 3,
  occasion: 'christmas',
  condition: 'good condition',
  user: @user_3
)
file = URI.open('https://ae01.alicdn.com/kf/Udb1972e863284a4780b522dfd35d42b72.jpg')
costume_20.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_21 = Costume.create!(
  name: 'Donkey',
  description: 'Donkey costume very comfy',
  size: 'L',
  location: 'Bogatell',
  category: 'men',
  color: 'black',
  price: 25,
  occasion: 'christmas',
  condition: 'good condition',
  user: @user_3
)
file = URI.open('https://cdn.wallapop.com/images/10420/9p/3v/__/c10420p586367203/i1805625238.jpg?pictureSize=W640')
costume_21.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_22 = Costume.create!(
  name: 'Reindeer costume',
  description: 'Reindeer costume for your childreens',
  size: 's',
  location: 'Barceloneta',
  category: 'kids',
  color: 'black',
  price: 12,
  occasion: 'christmas',
  condition: 'good condition',
  user: @user_3
)
file = URI.open('https://images.vinted.net/t/03_0078d_9rhxn6FufuFMNBhkhNupijD9/f800/1636905379.jpeg?s=aa51129010143f95fa3e024bbd74c2c68be6e583')
costume_22.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_23 = Costume.create!(
  name: 'Snow kid',
  description: 'Comfortable costume for your kid',
  size: 's',
  location: 'Carrer Travau',
  category: 'kids',
  color: 'white',
  price: 8,
  occasion: 'christmas',
  condition: 'good condition',
  user: @user_3
)
file = URI.open('https://images.vinted.net/t/03_01ec8_6RHYbkKnJYcp5j6xaxmHkY4g/f800/1636903994.jpeg?s=06267ff4c8b9838d6415da29443e1feb20107809')
costume_23.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

costume_24 = Costume.create!(
  name: 'Noel',
  description: 'Amazing womens costume',
  size: 's',
  location: 'Joanic',
  category: 'woman',
  color: 'red',
  price: 3,
  occasion: 'christmas',
  condition: 'good condition',
  user: @user_3
)
file = URI.open('https://images.vinted.net/t/03_010b6_uszznuLkjAFVySBWytBbFRAG/f800/1630778970.jpeg?s=3a29cf6ce7e314563ae16ae9740b6b079105c9eb')
costume_24.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


booking_1 = Booking.create!(
  start_date: Date.today,
  end_date: Date.today + 5,
  user: @user_1,
  status: 0,
  costume: costume_13
)

booking_2 = Booking.create!(
  start_date: Date.today,
  end_date: Date.today + 3,
  user: @user_2,
  status: 0,
  costume: costume_15
)

booking_3 = Booking.create!(
  start_date: Date.today,
  end_date: Date.today + 2,
  user: @user_3,
  status: 0,
  costume: costume_18
)

puts "total users: #{User.count}"
puts "total Costumes: #{Costume.count}"
puts "total bookings: #{Booking.count}"
