Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  
  # devise_for :installs
	# root 'libreries#index'
	resources :libreries do
		collection do
			get :find_book_categories
		end
	end
	resources :categories
	resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
