Rails.application.routes.draw do
  get 'users/new'
  root "static_pages#home"
  #STATICS
  get "/home", to: "static_pages#home"
  get "/about", to: "static_pages#about"
  get '/contact', to: "static_pages#contact"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #SIGN UP
  get 'signup', to: "users#new"

  #GET method , request to /products are handled in the index function of the Products Controller
  resources :products
  resources :users
  #'resources' gets all the product urls
  #get "/products", to: "products#index"
  #get "/products/:id", to: "products#show"
end
