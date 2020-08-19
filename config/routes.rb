Rails.application.routes.draw do
  root 'food_trucks#index'
  
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  # get '/users/sign_out', to: 'application#logout'
  resources :reviews
  resources :food_trucks do
    resources :reviews
  end

  
 


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
