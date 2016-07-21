class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    pokemon = Pokemon.new pokemon_params
    pokemon.save
    redirect_to root_path
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name)
  end
end
