Rails.application.routes.draw do
  resources :goals
  devise_for :users


  root 'pages#home'
  get 'all_goals' => 'goals#all_goals'
  get 'about' => 'pages#about'
end
