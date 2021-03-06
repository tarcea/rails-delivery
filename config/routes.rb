
Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # devise_for :users
  root to: 'pages#landing'
  get "/home" => "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :projects, :resources
  #get 'resources/:discipline', to: 'resources#show'

  get "/contact" => "pages#contact"
  # get "/resources" => "pages#resources"
  get "/beta" => "pages#beta"
end
