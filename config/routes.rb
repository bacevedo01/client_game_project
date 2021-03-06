Rails.application.routes.draw do
  devise_for :users
  root 'games#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'games#index'
  resources :games do
    resources :reviews
    resources :game_users
  end



  resources :users do
    resources :friends
    resources :friendsrequests
  end

  resources :tags




  post '/games/:game_id/upvote', to: 'games#upvote'
  post '/games/:game_id/downvote', to: 'games#downvote'

  post '/reviews/:review_id/upvote', to: 'reviews#upvote'
  post '/reviews/:review_id/downvote', to: 'reviews#downvote'


end
