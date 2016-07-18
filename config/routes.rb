Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'devise/registrations', sessions: 'devise/sessions'}
  devise_scope :user do
  	match '/users/sign_out' => 'users/sessions#destroy', via: [:get, :delete]
  end
  get 'pages/info'

  root :to => redirect('/products')
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "home#index"  
end
