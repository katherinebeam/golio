Rails.application.routes.draw do
  get 'home' => 'pages#home'
  resources :goals
  devise_for :users


  root 'pages#home'
  get 'all_goals' => 'goals#all_goals'
  get 'about' => 'pages#about'
end
