Rails.application.routes.draw do
  root to: "professors_grid#index", data: { no_turbolink: true }
  devise_for :users, :controllers => {:registrations => "registrations"}, :path => 'user_create'
  resources :users
  get '/professors/:id/show_card' => 'professors#show_card', :as => '/show_card'
  resources :announcements
  resources :documents
  resources :professors
  resources :courses
  resources :links
end
