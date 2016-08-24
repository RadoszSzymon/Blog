Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations"}
  resources :posts do
  	resources :comments
  end

  root "pages#main"

  get '/about', to: 'pages#about'
  get '/main', to: 'pages#main'
end
