class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :type
  has_many :user_pokemons
  has_many :users, through: :user_pokemons
end
