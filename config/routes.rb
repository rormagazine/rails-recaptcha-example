Rails.application.routes.draw do
	resources :posts
	resources :comments
	root "posts#index"
end
