Rails.application.routes.draw do
  resources :goals
  devise_for :users
  get 'devise/registrations#new' => 'goals#index'

  post 'devise/registrations#new' => 'goals#index'

  get 'devise/sessions#new' => 'goals#index'

  post 'devise/sessions#new' => 'goals#index'

  root 'pages#home'
  get 'about' => 'pages#about'
  get 'all_goals' => 'goals#all_goals'

end
