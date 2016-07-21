Rails.application.routes.draw do
  root "pokemons#index"
  resources :pokemons, only: [:new, :create]
end
