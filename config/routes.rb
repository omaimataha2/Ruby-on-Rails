Rails.application.routes.draw do
  devise_for :users
  resources :users
  # get 'articles/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# get('/articles', { to: 'articles#index' })
# get "/articles/:id", to: "articles#show", as: :article
  resources :articles do
    resources :comments
  end
  # Defines the root path route ("/")
  root "articles#index"
end
