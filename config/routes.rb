Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :memberships, only: [:index]

    resources :cohorts, only: [:index,:destroy] do
      resources :memberships
    end
  end
  resources :cohorts, only: [:show]
  resource :session

  get 'welcome' => 'users#welcome'
  root 'users#welcome'
end
