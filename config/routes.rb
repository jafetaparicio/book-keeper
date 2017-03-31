Rails.application.routes.draw do
  get '/books', to: 'books#index'
  get '/books/new', to: 'books#new'
  post '/books', to: 'books#create'
  get '/books/:id/edit', to: 'books#edit'
  put '/books/:id', to: 'books#update'
  get '/books/:id', to: 'books#show'
end
