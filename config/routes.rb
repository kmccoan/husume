VancouverProj::Application.routes.draw do
	get 'categories/index'

	root :to => 'pages#main'

	resources :categories do
		resources :activities
	end

	namespace :activities do
		get 'search'
	end



	devise_for :admin_users, ActiveAdmin::Devise.config
	ActiveAdmin.routes(self)

end