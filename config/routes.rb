Rails.application.routes.draw do
  resources :posts do 
  	resources :comments, module: :posts
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]

end
