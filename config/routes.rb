Rails.application.routes.draw do
  
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  
  get 'books/edit'
  get 'top' => 'homes#top'
  get 'books/:id' => 'books#show'
  get 'users/:id',to: 'users#top', as:"user"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
