Rails.application.routes.draw do
  
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  
  get 'books/:id/edit' => 'books#edit',as: "book"
  get 'top' => 'homes#top'
  get 'books/:id' => 'books#show', as: 'book'

    
    
    end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
