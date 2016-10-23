Rails.application.routes.draw do
	resources :users
	resources :goals do
		resources :posts
	end

	get 'posts', to: 'posts#index'

	get '/exit', to: 'sessions#destroy', as: :logout
  get '/login', to: 'sessions#create', as: :login


end
