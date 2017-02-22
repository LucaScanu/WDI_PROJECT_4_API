Rails.application.routes.draw do
  resources :requests
  resources :events
  resources :categories
  resources :users
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end
