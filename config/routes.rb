Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :games, only: [:new, :create, :show], shallow: true do
    resources :rounds, only: [:new, :create]
  end

end
