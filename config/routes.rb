Rails.application.routes.draw do
  
  resources :capability_request_resource_releases
  resources :capability_request_resources
  resources :complexities
  resources :capability_requests
  resources :resources
  resources :releases
  resources :release_gates
  resources :work_packages
  root to: 'welcome#index'

  resources :users
  resources :markets
  resources :sessions, only: [:new, :create, :destroy]
  # get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
