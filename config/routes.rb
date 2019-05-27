Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  get 'pages/index'
  resources :abyences
  resources :client_policies
  resources :insurers
  resources :coverages
  resources :clients
  resources :underwriters
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 root 'pages#index'
end
