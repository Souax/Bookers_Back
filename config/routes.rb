Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'auth/google/callback', to: 'users#create'
      resources :users, param: :email, only: [:update, :destroy], constraints: { email: %r{[^/]+} }
      get '/search', to: 'books#search'
      get '/base', to: 'books#base'
      get '/design', to: 'books#css'
      get '/computer_science', to: 'books#computer'
      get '/front_end', to: 'books#front_end'
      get '/back_end', to: 'books#back_end'
      get '/infrastructure', to: 'books#infrastructure'
      get 'web_development', to: 'books#web_development'
      get 'useful_book', to: 'books#useful_book'
      get 'javascript', to: 'programming#javascript'
      get 'typescript', to: 'programming#typescript'
      get 'ruby', to: 'programming#ruby'
      get 'python', to: 'programming#python'
      get 'java', to: 'programming#java'
      get 'php', to: 'programming#php'
      get 'go', to: 'programming#go'
      get 'react', to: 'programming#react'
      get 'vue', to: 'programming#vue'
      get 'nextjs', to: 'programming#nextjs'
      get 'nuxtjs', to: 'programming#nuxtjs'
      get 'nestjs', to: 'programming#nestjs'
      get 'jquery', to: 'programming#jquery'
      get 'rails', to: 'programming#rails'
      get 'laravel', to: 'programming#laravel'
      get 'newbook', to: 'newbooks#newbook'
      get 'popularity', to: 'newbooks#popularity'
      get 'recommendation', to: 'newbooks#recommendation'
    end
  end
end
