Rails.application.routes.draw do
  get 'landing/index'
  
  resources :article
  resources :comments
  root controller: :landing, action: :index
 
  root 'landing#index'
  get 'articles/new' => "articles#new", as: :articles_new_get
end


