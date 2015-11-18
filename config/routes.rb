Rails.application.routes.draw do
  get 'home' => 'pages#home'
  resources :goals
  devise_for :users


  root 'goals#index'
  get 'all_goals' => 'goals#all_goals'
  get 'about' => 'pages#about'
end
