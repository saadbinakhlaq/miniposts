Rails.application.routes.draw do
  devise_for :users

  root 'home#show', via: :get
  resource :dashboard, only: [:show]
  resources :posts, only: [:show]
  resources :users, only: [:show] do
    post 'follow' => 'following_relationships#create'
  end
  resources :text_posts, only: [:create]
  resources :photo_posts, only: [:create]
end
