Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destroy]
  devise_for :users
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  get 'friends', to: 'users#friends'
  get 'search_friend', to: 'users#search'
  resources :users, only: [:show]
  resources :friendships, only: [:create, :destroy]
end
