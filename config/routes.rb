Rails.application.routes.draw do
  resources :goals
  devise_for :users
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'all_goals' => 'goals#all_goals'

end
