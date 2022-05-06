Rails.application.routes.draw do
  # get 'contacts/index'
  # get 'contacts/create'
  # get 'contacts/new'
  get '/' => 'home#index'

  resources :articles
  resource :contacts, only: [:new, :create], path_names: {new: ''}
  
  # get '/', to 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
