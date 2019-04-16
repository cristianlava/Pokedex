class AddColumnsToPokemon < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :poke_type, :string
    add_column :pokemons, :poke_id, :integer
  end
end
