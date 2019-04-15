Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pokemons

  resources :users
  post '/login', to: 'authentication#create'
  get '/current_user', to: 'authentication#show'
end
