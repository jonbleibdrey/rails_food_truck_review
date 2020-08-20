Rails.application.routes.draw do
  
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  
  root 'food_trucks#index'
  resources :reviews
  resources :food_trucks
  
  resources :food_trucks do
    resources :reviews
  end
  
  # get '/users/sign_out', to: 'application#logout'
  
 


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
