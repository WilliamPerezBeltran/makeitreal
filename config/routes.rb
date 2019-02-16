Rails.application.routes.draw do
	root 'curses#index', as: 'home'
	resources :curses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
