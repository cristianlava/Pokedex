class PokemonsController < ApplicationController
  before_action :set_pokemon, only: [:show, :update, :destroy]
  def index
    @pokemons = Pokemon.all
    render json: @pokemons
  end

  def show
    render json: set_pokemon
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    if @pokemon.save
      render json: @pokemon
    else
      render json: @pokemon.errors
    end
  end 

  private
    def pokemon_params
      params.require(:pokemon).permit(:name, :level, :location, :type_id)
    end

    def set_pokemon
      @pokemon = Pokemon.find(params[:id])
    end
end