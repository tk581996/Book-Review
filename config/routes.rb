Rails.application.routes.draw do
  	devise_for :users
  	resources :users
	resources :books do
		resources :reviews
	end
	root 'books#index'
end
