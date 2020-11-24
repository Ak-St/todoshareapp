Rails.application.routes.draw do
  root to: 'todos#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :new, :create]
  
  resources :todos
  resources :guest_sessions, only: [:create]
end