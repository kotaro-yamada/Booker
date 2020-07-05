Rails.application.routes.draw do
  #get '/new' => 'todolists#new'
  root 'homes#top'
  resources :books, only: [:index, :show, :edit, :create, :destroy, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end

  

=begin
最新
 Prefix Verb   URI Pattern                                                                              Controller#Action
                     root GET    /                                                                                        homes#top
                    books GET    /books(.:format)                                                                         books#index
                          POST   /books(.:format)                                                                         books#create
                edit_book GET    /books/:id/edit(.:format)                                                                books#edit
                     book GET    /books/:id(.:format)                                                                     books#show
                          PATCH  /books/:id(.:format)                                                                     books#update
                          PUT    /books/:id(.:format)                                                                     books#update
                          DELETE /books/:id(.:format)                                                                     books#destroy
       rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
       rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
     rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

  
以前  
rescue get '/' => 'homes#top'
  post 'books' => 'books#create'
  get 'books' => 'books#index', as:'index_books'
  get 'books/:id' => 'books#show', as:'book'
  get 'books/:id/edit' => 'books#edit', as:'edit_book'
  patch 'books/:id' => 'books#update', as:'update_book'
  delete 'books/:id' => 'books#destroy', as:'destroy_book' => e
  
=end