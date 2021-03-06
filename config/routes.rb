Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  
  # get 'contacts/index'
  # get 'contacts/create'
  # get 'contacts/new'
  get '/' => 'home#index'

  get '/terms' => 'pages#terms'
  get '/about' => 'pages#about'
  
  resources :articles do 
    resources :comments
  end
  resource :contacts, only: [:new, :create], path_names: {new: ''}
  
  # get '/', to 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
