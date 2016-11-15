Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :memberships, only: [:index]
    resources :homeworks
    resources :cohorts, only: [:index,:destroy] do
      resources :memberships, only: [:index,:new]
    end
  end
  resources :cohorts, only: [:show]
  resource :session

  get "homework/:user_id/brand/:id" => 'homeworks#brand'
  patch "homework/:user_id/brand/:id" => "homeworks#brandUpdate"
  put "homework/:user_id/brand/:id" => "homeworks#brandUpdate"
  get "homework/:id" => 'users#homework'
  get 'welcome' => 'users#welcome'
  get 'back' => 'application#back'
  root 'users#welcome'
end
