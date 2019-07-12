Rails.application.routes.draw do
	get 'welcome/index'
	
	root 'welcome#index'
	
	namespace :admin do
		resources :articles do
			resources :comments
		end
	end

	get '/admin/login', to: 'admin#new'
	post '/admin/login', to: 'admin#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
