Rails.application.routes.draw do
  root to: 'pages#home'

  resources :visits
  resources :beacons
  resources :users

  get 'user/random' => 'users#random'
  get 'user/search' => 'users#search'
  get 'user/check' => 'users#check'

  get 'beacon/search' => 'beacons#search'

  get 'visit/search' => 'visits#search'
end
