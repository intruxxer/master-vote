Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  resources :users
  
  get "fieldnotes", :to => "notes#index"
  get "teamnotes", :to => "notes#team"
  
  # match "notes/:id/news", to: "notes#index", as: "fieldnotes", via: :get

end
