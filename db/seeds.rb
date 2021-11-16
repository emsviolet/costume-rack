# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Costume.create(name: 'Pirate', description: 'Pirate costume with trouser, top and accessories', size: 'medium', location: 'Gracia', category: 'Kids', color: 'multi', price: 10, occasion: 'Halloween', condition: 'used')
Costume.create(name: 'Ballgown', description: '80s pink ballgown', size: 'small', location: 'El Born', category: 'Women', color: 'pink', price: 15, occasion: 'fancy dress', condition: 'worn')
