Rails.application.routes.draw do
  devise_for :users
  resources :goals
  get 'about' => 'pages#about'
  get 'all_goals' => 'goals#all_goals'
  root 'pages#home'

end
