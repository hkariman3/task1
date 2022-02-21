Rails.application.routes.draw do
  patch 'books/:id' => 'books#update',as:'list_update'
  get '/top' => 'homes#top'
  get '/books' => 'books#index',as:'home'
  post 'books' => 'books#create',as:'cr'
  get 'books/:id/edit' => 'books#edit',as:'list_edit'
  get 'books/:id' => 'books#show',as:'list'
  delete 'books/:id' => 'books#destroy',as:'list_destroy'
  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end