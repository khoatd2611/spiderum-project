Rails.application.routes.draw do
  # devise_for :users
  namespace :api do
    namespace :v1 do
      namespace :user1 do
        resources :users
        get '/edit', to: 'users#edit'
        get '/signup', to: 'users#new'
        post '/signup', to: 'users#create'
        # post '/login', to: 'users#login'

        get '/login', to: 'sessions#new'
        post '/login', to: 'sessions#create'
        delete '/logout', to: 'sessions#destroy'

        resources :posts
      end
    end
  end
end
