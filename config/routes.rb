Rails.application.routes.draw do
  get '/index', to: 'welcome#index'
  get '/contact', to: 'pages#contact'
  get '/login' , to: 'sessions#new'
  post '/login', to: 'sessions#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
