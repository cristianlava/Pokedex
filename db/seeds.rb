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

@type
data['results'].each do |poke|
  poke_name = poke['name']
  poke_url = poke['url']
  poke_data = JSON.parse(RestClient.get(poke_url))
  id = poke_data['id']
  poke_data['types'].each do |pt|
    @type = pt['type']['name']
  end 
  Pokemon.create(name: poke_name, type: normal, poke_type: @type, poke_id: id)
end
puts 'created'
