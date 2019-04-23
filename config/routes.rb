Rails.application.routes.draw do

  root 'playlists#index'


  resources :artists
  resources :songs
  resources :playlists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
