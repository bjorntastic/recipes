Rails.application.routes.draw do

  resources :recipes
  resources :ingredients

  post '/recipes/:id', to: 'ingredients#create'

  root "recipes#index"
  
end
