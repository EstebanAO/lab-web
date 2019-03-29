Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}, :path => 'user_create'
  resources :users
  resources :announcements
  resources :documents
  resources :professors
  get '/:id/show_card' => 'professors#show_card', :as => '/show_card'
  resources :courses
  resources :links
end
