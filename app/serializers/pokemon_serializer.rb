class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name, :poke_type, :poke_id
  belongs_to :type
  has_many :user_pokemons
  has_many :users, through: :user_pokemons
end
