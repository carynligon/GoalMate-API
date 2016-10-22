Rails.application.routes.draw do
	resources :users
	resources :goals do
		resources :posts
	end

	get '/posts', to: 'posts#index'

end


