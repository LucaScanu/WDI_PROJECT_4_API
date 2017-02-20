Rails.application.routes.draw do
  resources :requests
  resources :events
  resources :categories
  resources :users, except: [:index]
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end
