Rails.application.routes.draw do
  #get '/new' => 'todolists#new'
  get '/' => 'homes#top'
  post 'books' => 'books#create'
  get 'books' => 'books#index', as:'index_books'
  get 'books/:id' => 'books#show', as:'book'
  get 'books/:id/edit' => 'books#edit', as:'edit_book'
  patch 'books/:id' => 'books#update', as:'update_book'
  delete 'books/:id' => 'books#destroy', as:'destroy_book'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end

  

=begin
resources :books
	 books_index GET    /books/index(.:format)                                                                   books#index
               books_show GET    /books/show(.:format)                                                                    books#show
               books_edit GET    /books/edit(.:format)                                                                    books#edit
                    books GET    /books(.:format)                                                                         books#index
                          POST   /books(.:format)                                                                         books#create
                 new_book GET    /books/new(.:format)                                                                     books#new
                edit_book GET    /books/:id/edit(.:format)                                                                books#edit
                     book GET    /books/:id(.:format)                                                                     books#show
                          PATCH  /books/:id(.:format)                                                                     books#update
                          PUT    /books/:id(.:format)                                                                     books#update
                          DELETE /books/:id(.:format)                                                                     books#destroy
=end