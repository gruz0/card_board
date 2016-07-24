Rails.application.routes.draw do
  namespace :admin do
    resources :cards, only: [:index, :show, :edit, :update]
    resources :posts
  end
  resources :cards, only: [:index, :show]
  root to: 'cards#index'


end
