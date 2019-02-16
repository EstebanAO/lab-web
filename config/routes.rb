Rails.application.routes.draw do
  resources :anuncios
  resources :documentos
  resources :usuarios
  resources :profesors
  resources :materia
  resources :vinculacions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
