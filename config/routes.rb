Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}, :path => 'user_create'
  resources :users
  get '/home/professors/:id' => 'home#professor', :as => '/home/professor'
  get '/home/show_professor' => 'home#show_professor', :as => '/show_professor'
  get 'professors_grid', to: 'home#show_professor'
  resources :announcements
  resources :documents
  resources :professors
  resources :courses
  resources :links
  resources :homes
end
