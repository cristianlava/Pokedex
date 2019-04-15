class User < ApplicationRecord
  has_many :user_pokemons
  has_many :pokemon, through: :user_pokemons
  has_secure_password
end
