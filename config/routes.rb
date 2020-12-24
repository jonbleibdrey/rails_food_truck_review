Rails.application.routes.draw do
  
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  
  root 'food_trucks#index'

  get '/foodtrucks/mexican', to: 'food_trucks#mexican'
  get '/foodtrucks/italian', to: 'food_trucks#italian'
  get '/foodtrucks/american', to: 'food_trucks#american'

  get '/reviews/five_star_rating', to: 'reviews#five_star_rating'



  resources :reviews
  
  resources :food_trucks
  
  resources :food_trucks do
    resources :reviews
  end
 
  
end
