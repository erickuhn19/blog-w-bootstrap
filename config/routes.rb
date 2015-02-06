Rails.application.routes.draw do
	devise_for :users, :path_names => {
    :verify_authy => "/verify-token",
    :enable_authy => "/enable-two-factor",
    :verify_authy_installation => "/verify-installation"
}
  resources :posts do
  resources :comments
  end

  root "posts#index"
  get '/about', to: 'pages#about'
end
