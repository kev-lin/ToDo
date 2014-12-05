Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch '/user/task', to: 'pokemons#capture', as: 'capture'
  patch '/user/delete', to: 'pokemons#damage', as: 'damage'
  patch '/user/destroyer', to: 'pokemons#destroyer', as: 'destroyer'
  post '/user/create', to: 'pokemons#create', as: 'create'
  get '/user/new', to: 'pokemons#new', as: 'new'
end
