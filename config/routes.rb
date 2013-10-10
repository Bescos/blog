Blog::Application.routes.draw do
    devise_for :users, :controllers => { :sessions => "sessions" }

    root :to => 'posts#index'

    resources :posts, :only => [:index, :show]

    namespace :admin do
        resources :posts
        resources :comments
        resources :users
        resources :categories
        resources :tags
    end

    match '/search' => 'posts#search', :via => :get
    match '/search' => 'posts#research', :via => :post
    match '/posts/:id/comments' => 'comments#create', :via => :post, :as => :create_comment
    match '/posts/:id/comments/:id' => 'comments#destroy', :via => :delete, :as => :delete_comment
end
