Rails.application.routes.draw do
 
  resources :patients

  devise_for :users
  root 'home#index'

	namespace :admin do
		 get 'home/index'
		resources :home, only: [:index]
		resources :lists
	  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	end
end