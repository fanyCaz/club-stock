Rails.application.routes.draw do
  
  #STATICS
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #Set the controller products to be the root
  root "static_pages#home"
  #GET method , request to /products are handled in the index function of the Products Controller
  resources :products
  #'resources' gets all the product urls
  #get "/products", to: "products#index"
  #get "/products/:id", to: "products#show"
end
