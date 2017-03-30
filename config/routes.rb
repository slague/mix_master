Rails.application.routes.draw do

  get '/auth/spotify/callback', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  resources :artists do
    resources :songs, only: [:new, :create]
  end

  resources :songs, only: [:show]
  resources :playlists

end
