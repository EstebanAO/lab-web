Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  resources :announcements
  resources :documents
  resources :users
  resources :professors
  resources :courses
  resources :links
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
