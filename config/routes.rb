Rails.application.routes.draw do

  resources :sessions
  resources :users
  resources :blogs
  root to: 'blogs#index'
end
