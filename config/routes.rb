Rails.application.routes.draw do
  root to: "professors_grid#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  get '/professors/:id/show_card' => 'professors#show_card', :as => '/show_card'
  get 'professors_grid', to: 'professors_grid#index'
  resources :users
  resources :announcements
  resources :documents
  resources :professors
  resources :courses
  resources :links
end
