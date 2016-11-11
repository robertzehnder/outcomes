Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :memberships
  end
  resources :cohorts

  resource :session

  get 'welcome' => 'users#welcome'

  root 'users#welcome'
end
