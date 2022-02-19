Rails.application.routes.draw do
  devise_for :users
  root to: 'games#new' #'pages#home'

  resources :games, only: [:new, :create, :show] do
    resources :rounds, only: [:new, :create]
  end

end
