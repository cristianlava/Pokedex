# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


poke_url = "https://pokeapi.co/api/v2/pokemon/?limit=151"

data = JSON.parse(RestClient.get("#{poke_url}"))
normal = Type.create(name: 'Normal')


data['results'].each do |poke|
  poke_name = poke['name']
  Pokemon.create(name: poke_name, type: normal)
end
puts 'created'
