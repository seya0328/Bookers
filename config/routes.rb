Rails.application.routes.draw do
  get 'books/new' => 'books#new'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books/edit'
  get 'top' => 'homes#top'
  get 'books/:id' => 'books#show'
   get 'books/:id' => 'lists#show', as: 'book'
    
    
    
    end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
