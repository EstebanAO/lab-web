Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}, :path => 'user_create'
  resources :users
  resources :announcements
  resources :documents
  resources :professors
  resources :courses
  resources :links
end
