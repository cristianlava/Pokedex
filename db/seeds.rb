# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Type.destroy_all
# Pokemon.destroy_all
# puts 'Destroyed'

# Type.create(name: 'Poison' )
# Type.create(name: 'Grass' )
# Type.create(name: 'Water' )
# Type.create(name: 'Fire' )

Pokemon.create(name:'Bulbasaur', level: 5, location: 'Kanto', type_id: 1)
Pokemon.create(name:'Squirtle', level: 5, location: 'Kanto', type_id: 3)
Pokemon.create(name:'Charmander', level: 5, location: 'Kanto', type_id: 4)