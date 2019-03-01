Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users
  resources :announcements
  resources :documents
  resources :users
  resources :professors
  resources :courses
  resources :links
end
