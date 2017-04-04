Rails.application.routes.draw do
  resources :books, :authors
  root 'books#index'
end

