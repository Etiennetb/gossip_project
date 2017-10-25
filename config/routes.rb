Rails.application.routes.draw do

	root "gossips#index"
		get "gossips", to: "gossips#index"
	resources :gossips
end
