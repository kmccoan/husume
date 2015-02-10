VancouverProj::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

	get 'categories/index'

	root :to => 'pages#main'

	resources :categories do
		resources :activities
	end

	ActiveAdmin.routes(self)

end