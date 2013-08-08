Blog::Application.routes.draw do
  devise_for :users

    root :to => 'posts#index'

    resources :posts

    match '/search' => 'posts#search', :via => :get
    match '/search' => 'posts#research', :via => :post
    match '/posts/:id/comments' => 'comments#create', :via => :post, :as => :create_comment
    match '/posts/:id/comments/:id' => 'comments#destroy', :via => :delete, :as => :delete_comment
end
