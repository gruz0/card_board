Rails.application.routes.draw do
  get '/admin', to: 'admin/cards#index'

  namespace :admin do
    resources :cards, only: [:index, :show, :edit, :update]
    resources :posts
  end

  resources :cards, only: [:index, :show]
  resources :posts, only: [:index]
  root to: 'cards#index'


end
