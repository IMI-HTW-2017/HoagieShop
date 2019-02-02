Rails.application.routes.draw do
  root 'pages#show', page: "home"
  get "/pages/:page" => "pages#show", as: 'show_page'
  get "/ratings/admin" => "ratings#admin", as: 'admin_ratings'
  get "/orders/:id/checkout" => "orders#checkout", as: 'checkout_order'
  put "/ratings/:id/publish" => "ratings#publish", as: 'publish_rating'
  resources :ratings
  resources :subs
  resources :orders
  resources :sauces
  resources :main_ingredients
  resources :ingredients
  resources :breads
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
