Rails.application.routes.draw do
  	devise_for :users
  	resources :users
	resources :books do
		resources :reviews
	end
	resources :notifications do
		collection do
			post :mark_as_read
		end
	end

	root 'books#index'
end
