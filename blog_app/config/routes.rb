Rails.application.routes.draw do
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :articles

  get '/articles' => 'articles#index', as: 'articles'
  get '/articles/new' => 'articles#new', as: 'new_article'
  post '/articles' => 'articles#create', as: 'create_article'
  get '/articles/:id' => 'articles#show', as: 'show_article'
  get '/new_route' => 'application#new_route', as: 'new_route'
  post '/articles/add_like' => 'articles#add_like'
end
