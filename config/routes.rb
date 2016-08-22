Rails.application.routes.draw do
  get 'posts/main'

  devise_for :users, controllers: { registrations: "registrations"}
  resources :posts do
  	resources :comments
  end

  root "posts#index"

  get '/about', to: 'pages#about'

end
