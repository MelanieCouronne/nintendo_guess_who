Rails.application.routes.draw do
  devise_for :users
  # devise_for :users do
  #   get 'users/sign_out' => 'devise/sessions#destroy'
  # end
  # devise_for :users, controllers: { registrations: 'users/registrations'}
  # get 'users/profile'
  root to: 'games#new' #'pages#home'

  resources :games, only: [:new, :create, :show] do
    resources :rounds, only: [:new, :create]
  end

  resources :users, only: [:edit, :update] do
    member do
      get 'profile'
    end
  end

end
