Rails.application.routes.draw do
  root 'pages#home'
  get 'about' => 'pages#about' # creates about_path
end
