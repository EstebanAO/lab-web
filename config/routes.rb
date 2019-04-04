Rails.application.routes.draw do
<<<<<<< HEAD
  root to: "professors_grid#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
=======
  root to: "professors_grid#index", data: { no_turbolink: true }
  devise_for :users, :controllers => {:registrations => "registrations"}, :path => 'user_create'
  resources :users
>>>>>>> 85d3cfecee15efda0d5d054283e019c1cf2f5479
  get '/professors/:id/show_card' => 'professors#show_card', :as => '/show_card'
  resources :announcements
  resources :documents
  resources :professors
  resources :courses
  resources :links
end
