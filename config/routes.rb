Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}, :path => 'user_create'
  resources :users
  get '/home/professors/:id' => 'home#professors', :as => '/home/professors'
  get '/home/show_professor' => 'home#show_professor', :as => '/show_professor'
  get '/home/courses/:id' => 'home#courses', :as => '/home/courses'
  get '/home/show_course' => 'home#show_course', :as =>'/show_course'
  get '/home/show_announcement' => 'home#show_announcement', :as =>'/show_announcement'
  get '/home/links/:id' => 'home#links', :as => '/home/links'
  get '/home/show_link' => 'home#show_link', :as =>'/show_link'
  resources :announcements
  resources :documents
  resources :professors
  resources :courses
  resources :links
  resources :homes
end
