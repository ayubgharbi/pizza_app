Rails.application.routes.draw do
  resources :line_items
  resources :carts
	root 'welcome#index'

	resources :categories do 
	 resources :foods
	end
	resources :foods
end
