Rails.application.routes.draw do
  devise_for :users

  resources :posts do 
    post :upvote
    post :downvote
    resources :comments do 
      post :upvote
      post :downvote
    end 
  end 

  root 'posts#index'
end
