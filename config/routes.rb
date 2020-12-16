Rails.application.routes.draw do
  #controller # nombre funcion
  root 'application#hello'

  get '/bai', to: 'application#bai'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
