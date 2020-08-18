Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  root 'users#index'
  resources :users
  resources :reviews
  resources :food_trucks
  



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
