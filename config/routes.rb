Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #Set the controller products to be the root
  root "products#index"
  #GET method , request to /products are handled in the index function of the Products Controller
  resources :products
  #get "/products", to: "products#index"
  #get "/products/:id", to: "products#show"
end
