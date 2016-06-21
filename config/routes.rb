Rails.application.routes.draw do
  devise_for :users

  root 'home#show', via: :get
  resource :dashboard, only: [:show]
  resources :posts, only: [:show]
  resources :users, only: [:show]
  resources :text_posts, only: [:create]
end
