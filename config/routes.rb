Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
	root 'welcome#index'

	resources :categories do 
	 resources :foods
	end
	resources :foods do
		get :who_bought, on: :member
	end
end
