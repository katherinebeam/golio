Rails.application.routes.draw do
  resources :goals
  devise_for :users
  root 'pages#home'
  get 'about' => 'pages#about' # creates about_path
end
