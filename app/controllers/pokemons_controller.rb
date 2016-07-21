class PokemonsController < ApplicationController
  before_action :authenticate

  def index
    @pokemons = Pokemon.where(email: session[:current_email])
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    pokemon = Pokemon.new pokemon_params
    pokemon.email = session[:current_email]
    pokemon.save
    redirect_to root_path
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name)
  end
end
