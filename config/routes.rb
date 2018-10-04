Rails.application.routes.draw do
			get 'welcome/index'
			resources :issues do
				resources :tasks
			end
			root 'welcome#index'
		end
