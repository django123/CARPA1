Rails.application.routes.draw do
  resources :release_couriers
  resources :entry_couriers
  resources :projects
  get 'users/index'

  get 'users/show'

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users
end
