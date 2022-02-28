Rails.application.routes.draw do
  resources :items do
    member do
      delete :purge_picture
      delete :purge_uploads
    end
  end
  # resources :items
  resources :users
  # get 'all-users', to: "users#index"
  get '/items/:id/purge_picture', to: 'items#purge_picture', as: :DELETE
  get 'uploads/:id/purge', to: 'upload#purge', as: 'purge_uploads'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
