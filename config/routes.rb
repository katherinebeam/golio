Rails.application.routes.draw do
  resources :goals
  devise_for :users
  root 'goals#index'
  get 'about' => 'pages#about' # creates about_path
end
