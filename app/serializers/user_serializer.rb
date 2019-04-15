class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :user_pokemons
  has_many :pokemons, through: :user_pokemons
end
