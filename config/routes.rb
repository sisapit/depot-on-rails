Rails.application.routes.draw do
  # get 'store/index'
  # controller#action = 'store#index'
  # as: tells Rails to create store_index_path and store_index_url accessor methods.
  root 'store#index', as: 'store_index'
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
