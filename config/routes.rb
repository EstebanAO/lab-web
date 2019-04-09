Rails.application.routes.draw do
<<<<<<< HEAD
  root to: "professors_grid#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  get '/professors/:id/show_card' => 'professors#show_card', :as => '/show_card'
  get 'professors_grid', to: 'professors_grid#index'
  resources :users
=======
  root to: "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}, :path => 'user_create'
  resources :users
  get '/home/professors/:id' => 'home#professor', :as => '/home/professor'
  get '/home/show_professor' => 'home#show_professor', :as => '/show_professor'
  get 'professors_grid', to: 'home#show_professor'
>>>>>>> ab240d726389d602e1ca6da9b9bb493f45939a29
  resources :announcements
  resources :documents
  resources :professors
  resources :courses
  resources :links
  resources :homes
end
