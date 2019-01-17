Rails.application.routes.draw do
  resources :ratings
  resources :subs
  resources :orders
  resources :sauces
  resources :main_ingredients
  resources :ingredients
  resources :breads
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
