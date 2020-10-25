Rails.application.routes.draw do
  root to: 'tasks#index'
  
  get 'tasks/create'
  get 'tasks/destroy'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
    
  resources :tasks

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
  resources :tasks, only: [:create, :destroy]
end